
<?php
/*******************************
*    ���ߣ���Ӣ��
*�����ڣ�2006-12-7
*******************************/
require("../class.phpmailer.php"); 
function smtp_mail ( $sendto_email, $subject, $body, $extra_hdrs, $user_name) {
$mail = new PHPMailer(); 
$mail->IsSMTP();                // send via SMTP 
$mail->Host = "202.104.149.88"; // SMTP servers 
$mail->SMTPAuth = true;         // turn on SMTP authentication 
$mail->Username = "gukefei318";   // SMTP username  ע�⣺��ͨ�ʼ���֤����Ҫ�� @����
$mail->Password = "20040318";        // SMTP password 
$mail->From = "gukefei318@163.com";      // ����������
$mail->FromName =  "cgsir.com����Ա";  // ������

$mail->CharSet = "GB2312";            // ����ָ���ַ�����
$mail->Encoding = "base64"; 
$mail->AddAddress($sendto_email,"username");  // �ռ������������
$mail->AddReplyTo("gukefei520@gsir.com","cgsir.com"); 
//$mail->WordWrap = 50; // set word wrap 
//$mail->AddAttachment("/var/tmp/file.tar.gz"); // attachment 
//$mail->AddAttachment("/tmp/image.jpg", "new.jpg"); 
$mail->IsHTML(true);  // send as HTML 
        // �ʼ�����
$mail->Subject = $subject;
// �ʼ����� 
$mail->Body = '
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
</head>
<body>
        ��ӭ����<a href="http://www.cgsir.com">http://www.cgsir.com</a> <br /><br />
��л��ע��Ϊ��վ��Ա��<br /><br />
</body>
</html>
';                                                                       
$mail->AltBody ="text/html"; 
if(!$mail->Send()) 
{ 
  echo "�ʼ��������� <p>"; 
  echo "�ʼ�������Ϣ: " . $mail->ErrorInfo; 
  exit; 
} 
else {
  echo "$user_name �ʼ����ͳɹ�!<br />"; 
}
}
// ����˵��(���͵�, �ʼ�����, �ʼ�����, ������Ϣ, �û���)
smtp_mail('gukefei520@126.com', '��ӭ����cgsir.com��', 'NULL', 'cgsir.com', 'username');
?>
