<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['emplogin'])==0)
    {   
header('location:index.php');
}
else{
$FirstName=$_SESSION['FirstName'];
$did=intval($_GET['leaveid']);
// code for update the read notification status
$sql1 = "SELECT * from tblleaves where tblleaves.id=:did";
$query1 = $dbh -> prepare($sql1);
$query1-> bindParam(':did', $did, PDO::PARAM_STR);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);



if($query1->rowCount() > 0)
{
foreach($results1 as $result1)
{        
  $l1=$result1->l1;
  $l2=$result1->l2;
  $l3=$result1->l3;
  $l4=$result1->l4;
  $l5=$result1->l5;
  $l6=$result1->l6;
  $l7=$result1->l7;

}
}




// code for action taken on leave
if(isset($_POST['update']))
{



if($l1==$FirstName){
$slotStatus=$_POST['slotStatus'];
echo $slotStatus;
$sql="update tblleaves set l11=:slotStatus where id=:did";
$query = $dbh->prepare($sql);
$query->bindParam(':slotStatus',$slotStatus,PDO::PARAM_STR);
$query->bindParam(':did',$did,PDO::PARAM_STR);
$query->execute();
$msg="Action taken Successfully";
}

if($l2==$FirstName){
$slotStatus=$_POST['slotStatus'];
echo $slotStatus;
$sql="update tblleaves set l22=:slotStatus where id=:did";
$query = $dbh->prepare($sql);
$query->bindParam(':slotStatus',$slotStatus,PDO::PARAM_STR);
$query->bindParam(':did',$did,PDO::PARAM_STR);
$query->execute();
$msg="Action taken Successfully";
}

if($l3==$FirstName){
$slotStatus=$_POST['slotStatus'];
echo $slotStatus;
$sql="update tblleaves set l33=:slotStatus where id=:did";
$query = $dbh->prepare($sql);
$query->bindParam(':slotStatus',$slotStatus,PDO::PARAM_STR);
$query->bindParam(':did',$did,PDO::PARAM_STR);
$query->execute();
$msg="Action taken Successfully";
}

if($l4==$FirstName){
$slotStatus=$_POST['slotStatus'];
echo $slotStatus;
$sql="update tblleaves set l44=:slotStatus where id=:did";
$query = $dbh->prepare($sql);
$query->bindParam(':slotStatus',$slotStatus,PDO::PARAM_STR);
$query->bindParam(':did',$did,PDO::PARAM_STR);
$query->execute();
$msg="Action taken Successfully";
}

if($l5==$FirstName){
$slotStatus=$_POST['slotStatus'];
echo $slotStatus;
$sql="update tblleaves set l55=:slotStatus where id=:did";
$query = $dbh->prepare($sql);
$query->bindParam(':slotStatus',$slotStatus,PDO::PARAM_STR);
$query->bindParam(':did',$did,PDO::PARAM_STR);
$query->execute();
$msg="Action taken Successfully";
}

if($l6==$FirstName){
$slotStatus=$_POST['slotStatus'];
echo $slotStatus;
$sql="update tblleaves set l66=:slotStatus where id=:did";
$query = $dbh->prepare($sql);
$query->bindParam(':slotStatus',$slotStatus,PDO::PARAM_STR);
$query->bindParam(':did',$did,PDO::PARAM_STR);
$query->execute();
$msg="Action taken Successfully";
}

if($l7==$FirstName){
$slotStatus=$_POST['slotStatus'];
echo $slotStatus;
$sql="update tblleaves set l77=:slotStatus where id=:did";
$query = $dbh->prepare($sql);
$query->bindParam(':slotStatus',$slotStatus,PDO::PARAM_STR);
$query->bindParam(':did',$did,PDO::PARAM_STR);
$query->execute();
$msg="Action taken Successfully";
}


}



 ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        
        <!-- Title -->
        <title>Admin | Leave Details </title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <meta charset="UTF-8">
        <meta name="description" content="Responsive Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        
        <!-- Styles -->
        <link type="text/css" rel="stylesheet" href="assets/plugins/materialize/css/materialize.min.css"/>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="assets/plugins/material-preloader/css/materialPreloader.min.css" rel="stylesheet">
        <link href="assets/plugins/datatables/css/jquery.dataTables.min.css" rel="stylesheet">

                <link href="assets/plugins/google-code-prettify/prettify.css" rel="stylesheet" type="text/css"/>  
        <!-- Theme Styles -->
        <link href="assets/css/alpha.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
<style>
        .errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
        </style>
    </head>
    <body>
       <?php include('includes/header.php');?>
            
       <?php include('includes/sidebar.php');?>
            <main class="mn-inner">
                <div class="row">
                    <div class="col s12">
                        <div class="page-title" style="font-size:24px;">Leave Details</div>
                    </div>
                   
                    <div class="col s12 m12 l12">
                        <div class="card">
                            <div class="card-content">
                                <span class="card-title">Leave Details</span>
                                <?php if($msg){?><div class="succWrap"><strong>SUCCESS</strong> : <?php echo htmlentities($msg); ?> </div><?php }?>
                                <table id="example" class="display responsive-table ">
                               
                                 
                                    <tbody>
<?php 
$lid=intval($_GET['leaveid']);
$sql = "SELECT tblleaves.id as lid,tblleaves.l1,tblleaves.l2,tblleaves.l3,tblleaves.l4,tblleaves.l5,tblleaves.l6,tblleaves.l7,tblleaves.l11,tblleaves.l22,tblleaves.l33,tblleaves.l44,tblleaves.l55,tblleaves.l66,tblleaves.l77, tblemployees.FirstName,tblemployees.EmpId,tblemployees.id,tblemployees.Gender,tblemployees.Phonenumber,tblemployees.EmailId,tblleaves.LeaveType,tblleaves.ToDate,tblleaves.FromDate,tblleaves.Description,tblleaves.PostingDate,tblleaves.Status,tblleaves.AdminRemark,tblleaves.AdminRemarkDate from tblleaves join tblemployees on tblleaves.empid=tblemployees.id where tblleaves.id=:lid";
$query = $dbh -> prepare($sql);
$query->bindParam(':lid',$lid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{         
      ?>  

                                        <tr>
                                            <td style="font-size:16px;"> <b>Employe Name :</b></td>
                                              <td>
                                                <?php echo htmlentities($result->FirstName);?></td>
                                              <td style="font-size:16px;"><b>Emp Id :</b></td>
                                              <td><?php echo htmlentities($result->EmpId);?></td>
                                              <td style="font-size:16px;"><b>Gender :</b></td>
                                              <td><?php echo htmlentities($result->Gender);?></td>
                                          </tr>

                                          <tr>
                                             <td style="font-size:16px;"><b>Emp Email id :</b></td>
                                            <td><?php echo htmlentities($result->EmailId);?></td>
                                             <td style="font-size:16px;"><b>Emp Contact No. :</b></td>
                                            <td><?php echo htmlentities($result->Phonenumber);?></td>
                                            <td>&nbsp;</td>
                                             <td>&nbsp;</td>
                                        </tr>

  <tr>
                                             <td style="font-size:16px;"><b>Leave Type :</b></td>
                                            <td><?php echo htmlentities($result->LeaveType);?></td>
                                             <td style="font-size:16px;"><b>Leave Date . :</b></td>
                                            <td>From <?php echo htmlentities($result->FromDate);?> to <?php echo htmlentities($result->ToDate);?></td>
                                            <td style="font-size:16px;"><b>Posting Date</b></td>
                                           <td><?php echo htmlentities($result->PostingDate);?></td>
                                        </tr>

<tr>
                                             <td style="font-size:16px;"><b>Employe Leave Description : </b></td>
                                            <td colspan="5"><?php echo htmlentities($result->Description);?></td>
                                          
                                        </tr>

<tr>
<td style="font-size:16px;"><b>leave Status :</b></td>
<td colspan="5"><?php $stats=$result->Status;
if($stats==1){
?>
<span style="color: green">Approved</span>
 <?php } if($stats==2)  { ?>
<span style="color: red">Not Approved</span>
<?php } if($stats==0)  { ?>
 <span style="color: blue">waiting for approval</span>
 <?php } ?>
</td>
</tr>

<tr>
<td style="font-size:16px;"><b>Admin Remark: </b></td>
<td colspan="5"><?php
if($result->AdminRemark==""){
  echo "waiting for Approval";  
}
else{
echo htmlentities($result->AdminRemark);
}
?></td>
 </tr>

 <tr>
<td style="font-size:16px;"><b>Admin Action taken date : </b></td>
<td colspan="5"><?php
if($result->AdminRemarkDate==""){
  echo "NA";  
}
else{
echo htmlentities($result->AdminRemarkDate);
}
?></td>
 </tr>






      <tr>
                                            <td style="font-size:16px;"> <b>Lecture details :</b></td>
                                              <td>
                                                
                                                    Slot 1</td>
                                              <td style="font-size:16px;"><b>Allocated to :</b></td>
                                              <td><?php echo htmlentities($result->l1);?></td>
                                              <td style="font-size:16px;"><b>Status :</b></td>
                                              <td><?php echo htmlentities($result->l11);?></td>
                                          </tr>




      <tr>
                                            <td style="font-size:16px;"> <b>Lecture details :</b></td>
                                              <td>
                                                
                                                    Slot 2</td>
                                              <td style="font-size:16px;"><b>Allocated to :</b></td>
                                              <td><?php echo htmlentities($result->l2);?></td>
                                              <td style="font-size:16px;"><b>Status :</b></td>
                                              <td><?php echo htmlentities($result->l22);?></td>
                                          </tr>




                                                <tr>
                                            <td style="font-size:16px;"> <b>Lecture details :</b></td>
                                              <td>
                                                
                                                    Slot 3</td>
                                              <td style="font-size:16px;"><b>Allocated to :</b></td>
                                              <td><?php echo htmlentities($result->l3);?></td>
                                              <td style="font-size:16px;"><b>Status :</b></td>
                                              <td><?php echo htmlentities($result->l33);?></td>
                                          </tr>





                                                <tr>
                                            <td style="font-size:16px;"> <b>Lecture details :</b></td>
                                              <td>
                                                
                                                    Slot 4</td>
                                              <td style="font-size:16px;"><b>Allocated to :</b></td>
                                              <td><?php echo htmlentities($result->l4);?></td>
                                              <td style="font-size:16px;"><b>Status :</b></td>
                                              <td><?php echo htmlentities($result->l44);?></td>
                                          </tr>




                                                <tr>
                                            <td style="font-size:16px;"> <b>Lecture details :</b></td>
                                              <td>
                                                
                                                    Slot 5</td>
                                              <td style="font-size:16px;"><b>Allocated to :</b></td>
                                              <td><?php echo htmlentities($result->l5);?></td>
                                              <td style="font-size:16px;"><b>Status :</b></td>
                                              <td><?php echo htmlentities($result->l55);?></td>
                                          </tr>



                                                <tr>
                                            <td style="font-size:16px;"> <b>Lecture details :</b></td>
                                              <td>
                                                
                                                    Slot 6</td>
                                              <td style="font-size:16px;"><b>Allocated to :</b></td>
                                              <td><?php echo htmlentities($result->l6);?></td>
                                              <td style="font-size:16px;"><b>Status :</b></td>
                                              <td><?php echo htmlentities($result->l66);?></td>
                                          </tr>



                                                <tr>
                                            <td style="font-size:16px;"> <b>Lecture details :</b></td>
                                              <td>
                                                
                                                    Slot 7</td>
                                              <td style="font-size:16px;"><b>Allocated to :</b></td>
                                              <td><?php echo htmlentities($result->l7);?></td>
                                              <td style="font-size:16px;"><b>Status :</b></td>
                                              <td><?php echo htmlentities($result->l77);?></td>
                                          </tr>













<?php 
if($stats==0)
{

?>
<tr>
 <td colspan="5">
  <a class="modal-trigger waves-effect waves-light btn" href="#modal1">Take&nbsp;Action</a>
<form name="adminaction" method="post">
<div id="modal1" class="modal modal-fixed-footer" style="height: 60%">
    <div class="modal-content" style="width:90%">
        <h4>Leave take action</h4>
          <select class="browser-default" name="slotStatus" required="">
                                            <option value="Pending">Choose your option</option>
                                            <option value="Approved">Approved</option>
                                            <option value="Not Approved">Not Approved</option>
                                        </select>
                                        
    </div>
    <div class="modal-footer" style="width:90%">
       <input type="submit" class="waves-effect waves-light btn blue m-b-xs" name="update" value="Submit">
    </div>

</div>   

 </td>
</tr>
<?php } ?>
   </form>                                     </tr>
                                         <?php $cnt++;} }?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
         
        </div>
        <div class="left-sidebar-hover"></div>
        
        <!-- Javascripts -->
        <script src="assets/plugins/jquery/jquery-2.2.0.min.js"></script>
        <script src="assets/plugins/materialize/js/materialize.min.js"></script>
        <script src="assets/plugins/material-preloader/js/materialPreloader.min.js"></script>
        <script src="assets/plugins/jquery-blockui/jquery.blockui.js"></script>
        <script src="assets/plugins/datatables/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/alpha.min.js"></script>
        <script src="assets/js/pages/table-data.js"></script>
         <script src="assets/js/pages/ui-modals.js"></script>
        <script src="assets/plugins/google-code-prettify/prettify.js"></script>
        
    </body>
</html>
<?php } ?>