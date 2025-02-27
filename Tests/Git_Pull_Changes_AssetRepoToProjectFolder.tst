<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="Git_Pull_Changes_AssetRepoToProjectFolder" version="5">

<meta>
   <create author="admin" buildNumber="10.8.1.2174" date="02/07/2025" host="C02CP01UPWDG" version="10.8.1"/>
   <lastEdited author="admin" buildNumber="10.8.1.2174" date="02/27/2025" host="5TVRDY3" version="10.8.1"/>
</meta>

<id>5CA09A66E5F211EFBCE6E252AE6C1D05</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0tMTA2MDAxMDE5</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node log="" name="git status" next="Command git~2" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="5CA09A68E5F211EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

<cmd>git status</cmd>
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


    <Node log="" name="Command git~2" next="end" quiet="false" think="500-1S" type="com.itko.lisa.utils.CommandLineExecNode" uid="5CA09A69E5F211EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

<cmd>git pull</cmd>
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


    <Node log="" name="abort" next="" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="5CA09A6BE5F211EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="abort" quiet="true" think="0h" type="com.itko.lisa.test.Abend" uid="5CA09A6CE5F211EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0h" type="com.itko.lisa.test.NormalEnd" uid="5CA09A6DE5F211EFBCE6E252AE6C1D05" useFilters="true" version="1"> 

    </Node>


</TestCase>