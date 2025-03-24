<?xml version="1.0" ?>

<TestCase name="Git_Diff_AssetRepo_ProjectFolder" version="5">

<meta>
   <create version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/27/2025" host="5TVRDY3" />
   <lastEdited version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="03/21/2025" host="5TVRDY3" />
</meta>

<id>C44ABB1AF52D11EFB988B0DCEF83C615</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0tOTAwNjQzOTYx</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="git diff" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="D0F3B342F52D11EFB988B0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<cmd>git diff</cmd>
<basedir>{{LISA_RELATIVE_PROJ_ROOT}}</basedir>
<toNode>abort</toNode>
<exceptionNode>abort</exceptionNode>
<timeOut>300</timeOut>
<killAtEnd>false</killAtEnd>
<wait>true</wait>
<addToEnv>false</addToEnv>
<spawn>false</spawn>
<execShell>false</execShell>
<charset>DEFAULT</charset>
<env>
</env>
<exitCodes>
</exitCodes>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="C44ABB1CF52D11EFB988B0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="C44ABB1EF52D11EFB988B0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="C44ABB20F52D11EFB988B0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
