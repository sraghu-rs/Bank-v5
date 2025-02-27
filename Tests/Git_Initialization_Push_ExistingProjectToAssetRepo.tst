<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="Git_Initialization_Push_ExistingProjectToAssetRepo" version="5">

<meta>
   <create author="admin" buildNumber="10.8.1.2174" date="02/24/2025" host="5TVRDY3" version="10.8.1"/>
   <lastEdited author="admin" buildNumber="10.8.1.2174" date="02/24/2025" host="5TVRDY3" version="10.8.1"/>
</meta>

<id>EBA89EABF27011EF90FFB0DCEF83C615</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9MTAuOC4xICgxMC44LjEuMjE3NCkmbm9kZXM9LTE1OTkzOTcwNjY=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node log="" name="Git Init" next="git add *" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="4EA3AC31F27111EF90FFB0DCEF83C615" useFilters="true" version="1"> 

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


    <Node log="" name="git add *" next="git commit" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="7C627C26F27111EF90FFB0DCEF83C615" useFilters="true" version="1"> 

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


    <Node log="" name="git commit" next="Git Branch" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="48BA0ABBF27211EF90FFB0DCEF83C615" useFilters="true" version="1"> 

<cmd>git commit -m "{{GIT_COMMIT_MESSAGE}}"</cmd>
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


    <Node log="" name="Git Branch" next="Git Remote Repo" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="84337E76F27411EF90FFB0DCEF83C615" useFilters="true" version="1"> 

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


    <Node log="" name="Git Remote Repo" next="Git Tag" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="9B058B66F27211EF90FFB0DCEF83C615" useFilters="true" version="1"> 

<cmd>git remote add origin "{{GIT_REPO_URL}}"</cmd>
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


    <Node log="" name="Git Tag" next="Git Push" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="856552A9F27511EF90FFB0DCEF83C615" useFilters="true" version="1"> 

<cmd>git tag "{{GIT_TAG}}"</cmd>
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


    <Node log="" name="Git Push" next="end" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="F7587E25F27211EF90FFB0DCEF83C615" useFilters="true" version="1"> 

<cmd>git push -u origin main "{{GIT_TAG}}"</cmd>
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


    <Node log="" name="end" next="fail" quiet="true" think="0h" type="com.itko.lisa.test.NormalEnd" uid="EBA89EB1F27011EF90FFB0DCEF83C615" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="abort" quiet="true" think="0h" type="com.itko.lisa.test.Abend" uid="EBA89EAFF27011EF90FFB0DCEF83C615" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="abort" next="" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="EBA89EADF27011EF90FFB0DCEF83C615" useFilters="true" version="1"> 

    </Node>


</TestCase>