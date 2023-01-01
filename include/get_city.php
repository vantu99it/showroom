<?php 
// Lấy danh sách tỉnh từ web service
function check_broken_link($url){
    $handle   = curl_init($url);
    if (false === $handle)
    {
        return false;
    }
    curl_setopt($handle, CURLOPT_HEADER, false);
    curl_setopt($handle, CURLOPT_FAILONERROR, true);  // this works
    curl_setopt($handle, CURLOPT_NOBODY, true);
    curl_setopt($handle, CURLOPT_RETURNTRANSFER, false);
    $connectable = curl_exec($handle);
    curl_close($handle);    
    return $connectable;
}
$url = "http://qcvn109.gov.vn/dvhc/XSLT_Tree/dvhc_data.xml";
if(check_broken_link($url) === TRUE){
    $xml = file_get_contents($url);
    $data = simplexml_load_string($xml);
}
else{
    echo '<tr class="danger"><th colspan="5" style="text-align:center"><h5>KHÔNG THỂ KẾT NỐI ĐẾN MÁY CHỦ</h5></th></tr>';
}
?>