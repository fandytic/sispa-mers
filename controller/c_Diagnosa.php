<?php 
/**
* 
*/
class Diagnosa
{

function perkaliantabel($m,$densitas1,$densitas2,$densitas_baru)
{
	include "koneksi/koneksi.php";
	for($y=0;$y<$m;$y++){								// 17
		for($x=0;$x<2;$x++){							// 18
			if(!($y==$m-1 && $x==1)){					// 19
				$v=explode(',',$densitas1[$x][0]);		// 20
				$w=explode(',',$densitas2[$y][0]);		// 21
				sort($v);								// 22
				sort($w);								// 23
				$vw=array_intersect($v,$w);				// 24
				if(empty($vw)){							// 25
					$k="&theta;";						// 26
				}else{
					$k=implode(',',$vw);				// 27
				}
				if(!isset($densitas_baru[$k])){			// 28
					$densitas_baru[$k]=$densitas1[$x][1]*$densitas2[$y][1]; // 29
				}else{
					$densitas_baru[$k]+=$densitas1[$x][1]*$densitas2[$y][1]; // 30
				}
			}
		}
	}
	return $densitas_baru;
}
}
?>