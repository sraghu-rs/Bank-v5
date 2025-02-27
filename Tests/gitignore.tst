<?xml version="1.0" ?>

<TestCase name="gitignore" version="5">

<meta>
   <create version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/27/2025" host="5TVRDY3" />
   <lastEdited version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/27/2025" host="5TVRDY3" />
</meta>

<id>51C64389F51911EFB988B0DCEF83C615</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0tMTY1NjM0NzYwNA==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Execute script (JSR-223)" log=""
          type="com.itko.lisa.test.UserScriptNode" 
          version="1" 
          uid="B3DFAD37F51A11EFB988B0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 


      <!-- Assertions -->
<CheckResult assertTrue="true" name="Any Exception Then Fail" type="com.itko.lisa.dynexec.CheckInvocationEx">
<log>Assertion name: Any Exception Then Fail checks for: true is of type: Assert on Invocation Exception.</log>
<then>fail</then>
<valueToAssertKey></valueToAssertKey>
        <param>.*</param>
</CheckResult>

<onerror>abort</onerror>
<language>Groovy</language>
<copyProps>TestExecProps</copyProps>
<script>File file = new File(&quot;{{LISA_PROJ_ROOT}}/.gitignore&quot;)&#13;&#10;file.write &quot;# ignore ALL .rsp files\n&quot;&#13;&#10;file &lt;&lt; &quot;*.rsp\n&quot;&#13;&#10;</script>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="51C6438BF51911EFB988B0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="51C6438DF51911EFB988B0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="51C6438FF51911EFB988B0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
