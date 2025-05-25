ARG IMAGE=intersystemsdc/irishealth-community
# ARG IMAGE=intersystemsdc/irishealth-community:2024.2-zpm
# docker pull intersystems/iris-community:2024.1
FROM $IMAGE AS builder

USER root

WORKDIR /irisdev/app/dev

RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /irisdev/app/dev

USER irisowner

COPY App.Installer.cls .

COPY src src

COPY .iris_init /irisdev/app/.iris_init

#; COPY irissession.sh /
#; SHELL ["/irissession.sh"] 


RUN --mount=type=bind,src=.,dst=. \
    pip3 install -r requirements.txt && \
    iris start IRIS && \
	iris session IRIS < iris.script && \
    iris stop IRIS quietly

#RUN \
#  zn "%SYS" \
#  write "Create web application ..." \
#  set webName = "/csp/visualizer/service" \
#  set webProperties("DispatchClass") = "CCD.Visualizer.REST.ServiceMap" \
#  set webProperties("NameSpace") = "IRISAPP" \
#  set webProperties("Enabled") = 1 \
#  set webProperties("MatchRoles") = ":%All" \
#  set webProperties("AutheEnabled") = 64 \
#  set sc = ##class(Security.Applications).Create(webName, .webProperties) \
#  write sc \
#  write "Web application "_webName_" has been created!" \ 

#  zn "IRISAPP" \

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


