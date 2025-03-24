<?xml version="1.0" ?>

<TestCase name="Git_Pull_Changes_AssetRepoToProjectFolder" version="5">

<meta>
   <create version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="02/07/2025" host="C02CP01UPWDG" />
   <lastEdited version="10.8.1" buildNumber="10.8.1.2174" author="admin" date="03/21/2025" host="5TVRDY3" />
</meta>

<id>5CA09A66E5F211EFBCE6E252AE6C1D05</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj0xMC44LjEgKDEwLjguMS4yMTc0KSZub2Rlcz0xNTY5ODgxNTQz</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="git status" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="5CA09A68E5F211EFBCE6E252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="git pull" > 

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


    <Node name="git pull" log=""
          type="com.itko.lisa.utils.CommandLineExecNode" 
          version="1" 
          uid="5CA09A69E5F211EFBCE6E252AE6C1D05" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

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


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="5CA09A6DE5F211EFBCE6E252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="5CA09A6CE5F211EFBCE6E252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="5CA09A6BE5F211EFBCE6E252AE6C1D05" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


</TestCase>
