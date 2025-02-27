<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="Git_Diff" version="5">

<meta>
   <create author="admin" buildNumber="10.8.1.2174" date="02/07/2025" host="C02CP01UPWDG" version="10.8.1"/>
   <lastEdited author="admin" buildNumber="10.8.1.2174" date="02/11/2025" host="C02CP01UPWDG" version="10.8.1"/>
</meta>

<id>D61A1174EAB411EF88A4E252AE6C1D05</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0tODYyNDE4OTI1</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node log="" name="git pull" next="git tag" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="D61A1175EAB411EF88A4E252AE6C1D05" useFilters="true" version="1"> 

<cmd>git pull</cmd>
<basedir>{{LISA_HOME}}/Projects/Bank v5</basedir>
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


    <Node log="" name="git tag" next="end" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="D61A1176EAB411EF88A4E252AE6C1D05" useFilters="true" version="1"> 

<cmd>git tag</cmd>
<basedir>{{LISA_HOME}}/Projects/Bank v5</basedir>
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


    <Node log="" name="abort" next="" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="D61A1177EAB411EF88A4E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="abort" quiet="true" think="0h" type="com.itko.lisa.test.Abend" uid="D61A1178EAB411EF88A4E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0h" type="com.itko.lisa.test.NormalEnd" uid="D61A1179EAB411EF88A4E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


</TestCase>