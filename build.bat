set apiDir=C:\Users\marko\Work\Git\WSO2\PSD2_sandbox\API\
set carDir=C:\wso2ei-6.2.0\wso2ei-6.2.0\repository\deployment\server\carbonapps

set apiNames=AccountInformationV1 CardAccountInformationV1 FundsConfirmationV1 PaymentInitiationV1

for %%a in (%apiNames%) do (
	
	cd /d %apiDir%%%a

	call mvn clean install

	cd /d %apiDir%%%a_Registry

	call mvn clean install
	
	kalina kalina kalina
