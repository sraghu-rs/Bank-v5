<?xml version="1.0" ?>

<TestCase name="Git_Initialization_Push_ExistingProjectToAssetRepo" version="5">

<meta>
   <create version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/24/2025" host="5TVRDY3" />
   <lastEdited version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/27/2025" host="5TVRDY3" />
</meta>

<id>EBA89EABF27011EF90FFB0DCEF83C615</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0tMjU3ODM5NTc=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Git Init" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="4EA3AC31F27111EF90FFB0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="git add *" > 

<cmd>git init</cmd>
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


    <Node name="git add *" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="7C627C26F27111EF90FFB0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Current Date" > 

<cmd>git add * </cmd>
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


    <Node name="Current Date" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="3E81ABF8F53211EFB988B0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="git commit" > 


      <!-- Filters -->
      <Filter type="com.itko.lisa.test.FilterSaveResponse">
        <valueToFilterKey>lisa.Current Date.rsp</valueToFilterKey>
      <prop>current_date</prop>
      </Filter>

<cmd>cmd /c date /t</cmd>
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


    <Node name="git commit" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="48BA0ABBF27211EF90FFB0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Git Branch" > 

<cmd>git commit -m &quot;{{GIT_COMMIT_MESSAGE}} Date: {{current_date}}&quot;</cmd>
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


    <Node name="Git Branch" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="84337E76F27411EF90FFB0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Git Remote Repo" > 

<cmd>git branch -M main</cmd>
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


    <Node name="Git Remote Repo" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="9B058B66F27211EF90FFB0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Git Tag" > 

<cmd>git remote add origin &quot;{{GIT_REPO_URL}}&quot;</cmd>
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


    <Node name="Git Tag" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="856552A9F27511EF90FFB0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Git Push" > 

<cmd>git tag &quot;{{GIT_TAG}}&quot;</cmd>
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


    <Node name="Git Push" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="F7587E25F27211EF90FFB0DCEF83C615" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<cmd>git push -u origin main &quot;{{GIT_TAG}}&quot;</cmd>
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
          uid="EBA89EADF27011EF90FFB0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="EBA89EAFF27011EF90FFB0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="EBA89EB1F27011EF90FFB0DCEF83C615" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
