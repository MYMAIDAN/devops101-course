# DevOp Course on Prometheus 





## Manifest Files

<table>
    <tr>
        <th>NAME</th>
        <th>PROMPT</th>
        <th>DESCRIPTION</th>
        <th>EXAMPLE</th>
    </tr>
    <tr>
        <th>Application Pod</th>
        <th>Create pod for this image</th>
        <th>Creating Pod manifest file for echo server</th>
        <th><a href="./yaml/app.yaml">app.yaml</a></th>
    </tr>
    <tr>
        <th>LivenessProbe</th>
        <th>create livenes prob for image=image=mykhailomaidan/echo-server with period of 20 sec and failure of 
3 times, endpoin is /"</th>
        <th>Create liveness probe for echo server with endpoint /ready with period of 20 sec</th>
        <th><a href="./yaml/app-livenessProbe.yaml">livenessProbe.yaml</a></th>
    </tr>
    <tr>
        <th>ReadinessProbe</th>
        <th>create readiness probe for image mykhailomaidan/echo-server with enpoint /ready and port 8000, failu
re 5 times, success 1 time, period 20 sec</th>
        <th>Create readiness probe to the container with input parameters</th>
        <th><a href="./yaml/app-readinessProbe.yaml">readinessProbe.yaml</a></th>
    </tr>
    <tr>
        <th>Mount Volume</th>
        <th>mount volume /personal/data with name data from host path /var/peronal/data</th>
        <th>Mount host folder to the pod volume</th>
        <th><a href="./yaml/app-volumeMounts.yaml">volumeMounts.yaml</a></th>
    </tr>
    <tr>
        <th>CronJob to ping goolge</th>
        <th>cron job to ping google.com every 5 days</th>
        <th>Create Cron Job for pint Google.com every 5 days</th>
        <th><a href="./yaml/app-cronjob.yaml">cronjob.yaml</a></th>
    </tr>
    <tr>
        <th>Create job to sync folder</th>
        <th>job for sync database from one server to another.</th>
        <th>Create job to sync database by using script"</th>
        <th><a href="./yaml/app-job.yaml">job.yaml</a></th>
    </tr>
    <tr>
        <th>Resource</th>
        <th>set request resources to 200m cpu and 4GB ram with limits 200m cpu and 5GB ram</th>
        <th>Set resource request and limitation</th>
        <th><a href="./yaml/app-resources.yaml">resources.yaml</a></th>
    </tr>
    <tr>
        <th>Multicontainer</th>
        <th>create pod with two container, 1 just a nginx server, 2 write data to nginx server</th>
        <th>Create ngix server and writer</th>
        <th><a href="./yaml/app-multicontainer.yaml">multicontainer.yaml</a></th>
    </tr>
    <tr>
        <th>Create Secret</th>
        <th>create secret for postgress database with username and password</th>
        <th>Creating secred for database pod with username and password</th>
        <th><a href="./yaml/app-secret.yaml">secret.yaml</a></th>
    </tr>
</table>

