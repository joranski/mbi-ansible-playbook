<?php
function getversion($cmd) {
  $output = shell_exec($cmd);
  preg_match('@[0-9]+\.[0-9]+\.[0-9]+@', $output, $version);
  return $version[0];
}
?>
<h3>Success!</h3>
<b>path:</b> <?=shell_exec('pwd');?></b>
<ul>
    <li><b>PHP:</b> <?=phpversion();?></li>
    <li><b>MySQL:</b> <?=getversion('mysql -V');?></li>
    <li><b>Nginx:</b> <?=getversion('/usr/sbin/nginx -v 2>&1');?></li>
</ul>
<h2>PHP Info</h2>
<?php phpinfo();
?>
