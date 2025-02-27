<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="Git_Create_New_tag_Push_Changes" version="5">

<meta>
   <create author="admin" buildNumber="10.8.1.2174" date="02/08/2025" host="C02CP01UPWDG" version="10.8.1"/>
   <lastEdited author="admin" buildNumber="10.8.1.2174" date="02/27/2025" host="5TVRDY3" version="10.8.1"/>
</meta>

<id>E72E1D12E5F211EFBCE6E252AE6C1D05</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0xNDE4MTQ5OTg2</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node log="" name="git tag" next="git push tag" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="1825F93AE5F311EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

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


    <Node log="" name="git push tag" next="end" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="301E9A7EE5F311EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

<cmd>git push origin {{GIT_TAG}}:{{GIT_TAG}}</cmd>
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


    <Node log="" name="end" next="fail" quiet="true" think="0h" type="com.itko.lisa.test.NormalEnd" uid="E72E1D18E5F211EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="abort" quiet="true" think="0h" type="com.itko.lisa.test.Abend" uid="E72E1D16E5F211EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="abort" next="" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="E72E1D14E5F211EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


</TestCase>