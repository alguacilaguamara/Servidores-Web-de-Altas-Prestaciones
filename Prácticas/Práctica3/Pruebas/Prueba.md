# Pruebas Benchmark
## Nginx


<table summary="Pruebas Apache Benchmark con Nginx" cellspacing="0" border="0">
	<colgroup span="7" width="85"></colgroup>
       <thead>
			<tr>
			<th scope="col">ab -n 1000</th>
			<th scope="col">-c 10</th>
			<th scope="col">-c 50</th>
		   <th scope="col">-c 100</th>
		   <th scope="col">-c 200</th>
		   <th scope="col">-c 300</th>
		   <th scope="col">-c 400</th>
		   <th scope="col">-c 500</th>
		   <th scope="col">-c 600</th>
		   <th scope="col">-c 700</th>
		   <th scope="col">-c 800</th>
		   <th scope="col">-c 900</th>
		   <th scope="col">-c 1000</th>
		   </tr>
	       </thead>
	<tbody>
	<tr>
		<th height="17" align="left">Time taken for tests: </th>
		<td align="left">0.486 seconds</td>
		<td align="left">0.475 seconds</td>
		<td align="left">0.454 seconds</td>
		<td align="left">0.518 seconds</td>
		<td align="left">0.580 seconds</td>
		<td align="left">1.099 seconds</td>
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
	</tr>
	<tr>
		<th height="17" align="left">Complete requests:</th>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td>28</td> 
		<td>10</td> 
		<td>64</td> 
		<td>100</td> 
		<td>160</td> 
		<td>256</td> 
	</tr>
	<tr>
		<th height="17" align="left">Failed requests:</th>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
	</tr>
	<tr>
		<th height="17" align="left">Requests per second:</th>
		<td align="left">2055.84 #/sec</td>
		<td align="left">2104.98 #/sec</td>
		<td align="left">2202.60 #/sec</td>
		<td align="left">1928.77 #/sec</td>
		<td align="left">1723.48 #/sec</td>
		<td align="left">909.74 #/sec</td>
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
	</tr>
	<tr>
		<th height="17" align="left">Time per request:</th>
		<td align="left">4.864 ms</td>
		<td align="left">23.753 ms</td>
		<td align="left">45.401 ms</td>
		<td align="left">103.693 ms</td>
		<td align="left">174.067 ms</td>
		<td align="left">439.688 ms</td>
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
	</tr>
	<tr>
		<th height="17" align="left">Time per request: (mean, across all concurrent requests)</th>
		<td align="left">0.486 ms</td>
		<td align="left">0.475 ms</td>
		<td align="left">0.454 ms</td>
		<td align="left">0.518 ms</td>
		<td align="left">0.580 ms</td>
		<td align="left">1.099 ms</td>
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
	</tr>
	<tr>
		<th height="17" align="left">Transfer rate:</th>
		<td align="left"> 642.45 Kbytes/sec</td>
		<td align="left"> 657.80 Kbytes/sec</td>
		<td align="left"> 688.31 Kbytes/sec</td>
		<td align="left"> 602.74 Kbytes/sec</td>
		<td align="left"> 538.59 Kbytes/sec</td>
		<td align="left"> 284.29 Kbytes/sec</td>
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
		<td>reset.by.peer.(104)</td> 
	</tr>


	</tbody>
</table>





## Haproxy


<table "Pruebas Apache Benchmark con Haproxy"  cellspacing="0" border="0">
	<colgroup span="13" width="85"></colgroup>
	       <thead>
			<tr>
			<th scope="col">ab -n 1000</th>
			<th scope="col">-c 10</th>
			<th scope="col">-c 50</th>
		   <th scope="col">-c 100</th>
		   <th scope="col">-c 200</th>
		   <th scope="col">-c 300</th>
		   <th scope="col">-c 400</th>
		   <th scope="col">-c 500</th>
		   <th scope="col">-c 600</th>
		   <th scope="col">-c 700</th>
		   <th scope="col">-c 800</th>
		   <th scope="col">-c 900</th>
		   <th scope="col">-c 1000</th>
		   </tr>
	       </thead>
	<tr>
		<th height="17" align="left">Time taken for tests: </th>
		<td align="left">0.422 seconds</td>
		<td align="left">0.390 seconds</td>
		<td align="left">0.352 seconds</td>
		<td align="left">0.383 seconds</td>
		<td align="left">0.363 seconds</td>
		<td align="left">0.361 seconds</td>
		<td align="left">0.373 seconds</td>
		<td align="left">0.377 seconds</td>
		<td align="left">0.393 seconds</td>
		<td align="left">0.408 seconds</td>
		<td align="left">0.405 seconds</td>
		<td align="left">0.397 seconds</td>
	</tr>
	<tr>
		<th height="17" align="left">Complete requests:</th>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
	</tr>
	<tr>
		<th height="17" align="left">Failed requests:</th>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="503" sdnum="3082;">503</td>
		<td align="right" sdval="509" sdnum="3082;">509</td>
		<td align="right" sdval="510" sdnum="3082;">510</td>
		<td align="right" sdval="534" sdnum="3082;">534</td>
		<td align="right" sdval="516" sdnum="3082;">516</td>
		<td align="right" sdval="505" sdnum="3082;">505</td>
		<td align="right" sdval="543" sdnum="3082;">543</td>
		<td align="right" sdval="499" sdnum="3082;">499</td>
		<td align="right" sdval="498" sdnum="3082;">498</td>
		<td align="right" sdval="508" sdnum="3082;">508</td>
	</tr>
	<tr>
		<th height="17" align="left">Requests per second:</th>
		<td align="left">2367.46#/sec</td>
		<td align="left">2561.23#/sec</td>
		<td align="left">2843.07#/sec</td>
		<td align="left">2607.71#/sec</td>
		<td align="left">2754.27#/sec</td>
		<td align="left">2772.00#/sec</td>
		<td align="left">2682.98#/sec</td>
		<td align="left">2655.25#/sec</td>
		<td align="left">2546.24#/sec</td>
		<td align="left">2451.24#/sec</td>
		<td align="left">2466.11#/sec</td>
		<td align="left">2517.24#/sec</td>
	</tr>
	<tr>
		<th height="17" align="left">Time per request:</th>
		<td align="left">4.224ms</td>
		<td align="left">19.522ms</td>
		<td align="left">35.173ms</td>
		<td align="left">76.696ms</td>
		<td align="left">108.922ms</td>
		<td align="left">144.300ms</td>
		<td align="left">186.360ms</td>
		<td align="left">225.967ms</td>
		<td align="left">274.915ms</td>
		<td align="left">326.366ms</td>
		<td align="left">364.947ms</td>
		<td align="left">397.260ms</td>
	</tr>
	<tr>
		<th height="17" align="left">Time per request: (mean, across all concurrent requests)</th>
		<td align="left">0.422ms</td>
		<td align="left">0.390ms</td>
		<td align="left">0.352ms</td>
		<td align="left">0.383ms</td>
		<td align="left">0.363ms</td>
		<td align="left">0.361ms</td>
		<td align="left">0.373ms</td>
		<td align="left">0.377ms</td>
		<td align="left">0.393ms</td>
		<td align="left">0.408ms</td>
		<td align="left">0.405ms</td>
		<td align="left">0.397ms</td>
	</tr>
	<tr>
		<th height="17" align="left">Transfer rate:</th>
		<td align="left">742.14Kbytes/sec</td>
		<td align="left">802.89Kbytes/sec</td>
		<td align="left">891.52Kbytes/sec</td>
		<td align="left">816.68Kbytes/sec</td>
		<td align="left">862.48Kbytes/sec</td>
		<td align="left">865.83Kbytes/sec</td>
		<td align="left">839.63Kbytes/sec</td>
		<td align="left">831.92Kbytes/sec</td>
		<td align="left">794.55Kbytes/sec</td>
		<td align="left">768.49Kbytes/sec</td>
		<td align="left">773.23Kbytes/sec</td>
		<td align="left">788.43Kbytes/sec</td>
	</tr>
</table>


## Lighttpd

<table cellspacing="0" border="0">
	<colgroup span="12" width="120"></colgroup>
	<colgroup width="85"></colgroup>
	<thead>
			<tr>
			<th scope="col">ab -n 1000</th>
			<th scope="col">-c 10</th>
			<th scope="col">-c 50</th>
		   <th scope="col">-c 100</th>
		   <th scope="col">-c 200</th>
		   <th scope="col">-c 300</th>
		   <th scope="col">-c 400</th>
		   <th scope="col">-c 500</th>
		   <th scope="col">-c 600</th>
		   <th scope="col">-c 700</th>
		   <th scope="col">-c 800</th>
		   <th scope="col">-c 900</th>
		   <th scope="col">-c 1000</th>
		   </tr>
	       </thead>
	<tr>
		<th height="17" align="left">Time taken for tests: </th>
		<td align="left">0.472 seconds</td>
		<td align="left">0.434 seconds</td>
		<td align="left">0.538 seconds</td>
		<td align="left">0.571 seconds</td>
		<td align="left">1.432 seconds</td>
		<td align="left">1.421 seconds</td>
		<td align="left">1.376 seconds</td>
		<td align="left">1.402 seconds</td>
		<td align="left">1.371 seconds</td>
		<td align="left">3.202 seconds</td>
		<td align="left">3.197 seconds</td>
		<td align="left">1.474 seconds</td>
	</tr>
	<tr>
		<th height="17" align="left">Complete requests:</th>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
		<td align="right" sdval="1000" sdnum="3082;">1000</td>
	</tr>
	<tr>
		<th height="17" align="left">Failed requests:</th>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
		<td align="right" sdval="500" sdnum="3082;">500</td>
	</tr>
	<tr>
		<th height="17" align="left">Requests per second:</th>
		<td align="left">2117.76 #/sec </td>
		<td align="left">2304.16 #/sec </td>
		<td align="left">1857.98 #/sec </td>
		<td align="left">1751.22 #/sec </td>
		<td align="left">698.32 #/sec </td>
		<td align="left">703.76 #/sec </td>
		<td align="left">726.93 #/sec </td>
		<td align="left">713.23 #/sec </td>
		<td align="left">729.24 #/sec </td>
		<td align="left">312.29 #/sec </td>
		<td align="left">312.80 #/sec </td>
		<td align="left">678.33 #/sec </td>
	</tr>
	<tr>
		<th height="17" align="left">Time per request:</th>
		<td align="left">4.722 ms </td>
		<td align="left">21.700 ms </td>
		<td align="left">53.822 ms </td>
		<td align="left">114.206 ms </td>
		<td align="left">429.603 ms </td>
		<td align="left">568.372 ms </td>
		<td align="left">687.824 ms </td>
		<td align="left">841.244 ms </td>
		<td align="left">959.903 ms </td>
		<td align="left">2561.762 ms </td>
		<td align="left">2877.216 ms </td>
		<td align="left">1474.206 ms </td>
	</tr>
	<tr>
		<th height="17" align="left">Time per request: (mean, across all concurrent requests)</th>
		<td align="left">0.472 ms</td>
		<td align="left">0.434 ms</td>
		<td align="left">0.538 ms</td>
		<td align="left">0.571 ms</td>
		<td align="left">1.432 ms</td>
		<td align="left">1.421 ms</td>
		<td align="left">1.376 ms</td>
		<td align="left">1.402 ms</td>
		<td align="left">1.371 ms</td>
		<td align="left">3.202 ms</td>
		<td align="left">3.197 ms</td>
		<td align="left">1.474 ms</td>
	</tr>
	<tr>
		<th height="17" align="left">Transfer rate:</th>
		<td align="left">663.87 Kbytes/sec</td>
		<td align="left">722.30 Kbytes/sec</td>
		<td align="left">582.43 Kbytes/sec</td>
		<td align="left">548.97 Kbytes/sec</td>
		<td align="left">218.91 Kbytes/sec</td>
		<td align="left">220.61 Kbytes/sec</td>
		<td align="left">227.88 Kbytes/sec</td>
		<td align="left">223.58 Kbytes/sec</td>
		<td align="left">228.60 Kbytes/sec</td>
		<td align="left">97.89 Kbytes/sec</td>
		<td align="left">98.06 Kbytes/sec</td>
		<td align="left">212.64 Kbytes/sec</td>
	</tr>
</table>

# Comparación
![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica3/Pruebas/Comparación.png)
