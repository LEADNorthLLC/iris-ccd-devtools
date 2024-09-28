ARG IMAGE=intersystemsdc/irishealth-community
# ARG IMAGE=intersystemsdc/irishealth-community:2024.2-zpm
# docker pull intersystems/iris-community:2024.1
FROM $IMAGE AS builder

WORKDIR /home/irisowner/dev

COPY Installer.cls .

COPY src src
# COPY misc/csp /usr/irissys/csp
COPY irissession.sh /
SHELL ["/irissession.sh"]

RUN \
  do $SYSTEM.OBJ.Load("Installer.cls", "ck") \
  set sc = ##class(App.Installer).setup() \
  zn "%SYS" \
  write "Create web application ..." \
  set webName = "/csp/visualizer/service" \
  set webProperties("DispatchClass") = "CCD.Visualizer.REST.ServiceMap" \
  set webProperties("NameSpace") = "IRISAPP" \
  set webProperties("Enabled") = 1 \
  set webProperties("MatchRoles") = ":%All" \
  set webProperties("AutheEnabled") = 64 \
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

#ADD --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} https://github.com/grongierisc/iris-docker-multi-stage-script/releases/latest/download/copy-data.py /irisdev/app/copy-data.py
ADD --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} https://github.com/grongierisc/iris-docker-multi-stage-script/releases/latest/download/copy-data.py /home/irisowner/dev/copy-data.py


RUN --mount=type=bind,source=/,target=/builder/root,from=builder \
    cp -f /builder/root/usr/irissys/iris.cpf /usr/irissys/iris.cpf && \
    python3 /home/irisowner/dev/copy-data.py -c /usr/irissys/iris.cpf -d /builder/root/


