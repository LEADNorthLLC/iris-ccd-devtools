ARG IMAGE=intersystemsdc/irishealth-community
#ARG IMAGE=intersystems/iris:2019.1.0S.111.0
#ARG IMAGE=store/intersystems/irishealth:2019.3.0.308.0-community
#ARG IMAGE=store/intersystems/iris-community:2019.3.0.309.0
#ARG IMAGE=store/intersystems/iris-community:2019.4.0.379.0
#ARG IMAGE=store/intersystems/iris-community:2020.1.0.197.0
#ARG IMAGE=intersystemsdc/iris-community:2020.1.0.209.0-zpm
#ARG IMAGE=intersystemsdc/iris-community:2020.1.0.215.0-zpm
#ARG IMAGE=intersystemsdc/iris-community:2020.2.0.196.0-zpm
#ARG IMAGE=intersystemsdc/iris-community
FROM $IMAGE AS builder

USER root

WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp

USER irisowner

COPY Installer.cls .

COPY src src
COPY misc/csp /usr/irissys/csp
COPY irissession.sh /
SHELL ["/irissession.sh"] 



RUN \
  do $SYSTEM.OBJ.Load("Installer.cls", "ck") \
  set sc = ##class(App.Installer).setup() \
  zn "%SYS" \
  write "Create web application ..." \
  set webName = "/crud" \
  set webProperties("DispatchClass") = "Sample.PersonREST" \
  set webProperties("NameSpace") = "IRISAPP" \
  set webProperties("Enabled") = 1 \
  set webProperties("AutheEnabled") = 32 \
  set sc = ##class(Security.Applications).Create(webName, .webProperties) \
  write sc \
  write "Web application "_webName_" has been created!" \
  write "Create web application ..." \
  set webName = "/csp/visualizer/service" \
  set webProperties("DispatchClass") = "CCD.Visualizer.REST.ServiceMap" \
  set webProperties("NameSpace") = "IRISAPP" \
  set webProperties("Enabled") = 1 \
  set webProperties("AutheEnabled") = 32 \
  set sc = ##class(Security.Applications).Create(webName, .webProperties) \
  write sc \
  write "Web application "_webName_" has been created!" \
  write "Create web application ..." \
  set webName = "/csp/ccdtools" \
  set webProperties("Path") = "/usr/irissys/csp/out"\
  set webProperties("DispatchClass") = "" \
  set webProperties("NameSpace") = "IRISAPP" \
  set webProperties("Enabled") = 1 \
  set webProperties("AutheEnabled") = 32 \
  set sc = ##class(Security.Applications).Create(webName, .webProperties) \
  write sc \
  write "Web application "_webName_" has been created!" 
  #zn "IRISAPP" \
  #zpm "install swagger-ui" \
  #zpm "install webterminal"
  


  # bringing the standard shell back
SHELL ["/bin/bash", "-c"]
CMD [ "-l", "/usr/irissys/mgr/messages.log" ]



FROM $IMAGE AS final

ADD --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} https://github.com/grongierisc/iris-docker-multi-stage-script/releases/latest/download/copy-data.py /irisdev/app/copy-data.py



RUN --mount=type=bind,source=/,target=/builder/root,from=builder \
    cp -f /builder/root/usr/irissys/iris.cpf /usr/irissys/iris.cpf && \
    python3 /irisdev/app/copy-data.py -c /usr/irissys/iris.cpf -d /builder/root/ 