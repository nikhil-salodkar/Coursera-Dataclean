#Code book

There are a total of 68 Variables in the dataset which is created after running run_analysis.R.
Although I do not understand the meaning of variables completely, some important points regarding understanding the 
variable names is as given below.

  - The features selected came from accelerometer and gyroscope. In the variable name wherever "gyro" is there that variable values
  came from gyroscope and the values for variable names having "acc" in them came from accelerometer.
  - The measurements were done on three angular axis x, y and z. If "x" comes in the end of variable name, it means that measurement
  was done on x axis and so on. Some Variables do not have angular axis.
  - Two types of measurements were done some on Time domain and others on Frequency domain. The variable name starting with "t"
  signifies that the variable represents measurments in time domain and when variable names starts with an "f", it signifies the
  variable represents measurments in Frequency domain.
  -"mean" in the variable name signifies that the mean of the measurements was calculated and similarly "std" in the variable name 
  signifies that the standard deviation of the measurement was calculated.
  
<b> All the feature variables corresponds to the average of each variable for each activity and each subject.</b>
<table>
<tr><th>Sr.No</th><th>Variable Name</th><th>Short Descrption</th></tr>
<tr><td>1  </td><td>              subjectid</td> <td>Id of the person who performed the experiment</td></tr>
<tr><td>2  </td><td>                activity</td><td>Activity Id (from 1 to 6) which corresponds to walking, Standing e.t.c </td></tr>
<tr><td>3  </td><td>           tbodyaccmeanx</td><td>mean of time domain measure of body acceleration in x axis</td></tr>
<tr><td>4  </td><td>           tbodyaccmeany</td><td>mean of time domain measure of body acceleration on y axis</td></tr>
<tr><td>5  </td><td>           tbodyaccmeanz</td><td>mean of time domain measure of body acceleration on z axis</td></tr>
<tr><td>6  </td><td>            tbodyaccstdx</td><td>standard deviation of time domain measure of body acceleration in x axis</td></tr>
<tr><td>7  </td><td>            tbodyaccstdy</td><td>similar as above</td></tr>
<tr><td>8  </td><td>            tbodyaccstdz</td><td>similar as above</td></tr>
<tr><td>9  </td><td>        tgravityaccmeanx</td><td>mean of time domain measure of gravity acceleration in x axis</td></tr>
<tr><td>10 </td><td>        tgravityaccmeany</td><td>similar as above</td></tr>
<tr><td>11 </td><td>        tgravityaccmeanz</td><td>similar as above</td></tr>
<tr><td>12 </td><td>         tgravityaccstdx</td><td>standard deviation of time domain of gravity acceleration in x axis</td></tr>
<tr><td>13 </td><td>         tgravityaccstdy</td><td>similar as above</td></tr>
<tr><td>14 </td><td>         tgravityaccstdz</td><td>similar as above</td></tr>
<tr><td>15 </td><td>       tbodyaccjerkmeanx</td><td>mean of time domain linear acceleration in x axis</td></tr>
<tr><td>16 </td><td>       tbodyaccjerkmeany</td><td>similar as above</td></tr>
<tr><td>17 </td><td>       tbodyaccjerkmeanz</td><td>similar as above</td></tr>
<tr><td>18 </td><td>        tbodyaccjerkstdx</td><td>standard deviation of time domain linear acceleration in x axis</td></tr>
<tr><td>19 </td><td>        tbodyaccjerkstdy</td><td>similar as above</td></tr>
<tr><td>20 </td><td>        tbodyaccjerkstdz</td><td>similar as above</td></tr>
<tr><td>21 </td><td>          tbodygyromeanx</td><td>mean of angular velocity of body in x axis</td></tr>
<tr><td>22 </td><td>          tbodygyromeany</td><td>similar as above</td></tr>
<tr><td>23 </td><td>          tbodygyromeanz</td><td>similar as above</td></tr>
<tr><td>24 </td><td>           tbodygyrostdx</td><td>standard deviation of time domain angular velocity in x axis</td></tr>
<tr><td>25 </td><td>           tbodygyrostdy</td><td>similar as above</td></tr>
<tr><td>26 </td><td>           tbodygyrostdz</td><td>similar as above</td></tr>
<tr><td>27 </td><td>      tbodygyrojerkmeanx</td><td>similar as above</td></tr>
<tr><td>28 </td><td>      tbodygyrojerkmeany</td><td>similar as above</td></tr>
<tr><td>29 </td><td>      tbodygyrojerkmeanz</td><td>similar as above</td></tr>
<tr><td>30 </td><td>       tbodygyrojerkstdx</td><td>similar as above</td></tr>
<tr><td>31 </td><td>       tbodygyrojerkstdy</td><td>similar as above</td></tr>
<tr><td>32 </td><td>       tbodygyrojerkstdz</td><td>similar as above</td></tr>
<tr><td>33 </td><td>         tbodyaccmagmean</td><td>similar as above</td></tr>
<tr><td>34 </td><td>          tbodyaccmagstd</td><td>similar as above</td></tr>
<tr><td>35 </td><td>      tgravityaccmagmean</td><td>similar as above</td></tr>
<tr><td>36 </td><td>       tgravityaccmagstd</td><td>similar as above</td></tr>
<tr><td>37 </td><td>     tbodyaccjerkmagmean</td><td>similar as above</td></tr>
<tr><td>38 </td><td>      tbodyaccjerkmagstd</td><td>similar as above</td></tr>
<tr><td>39 </td><td>        tbodygyromagmean</td><td>similar as above</td></tr>
<tr><td>40 </td><td>         tbodygyromagstd</td><td>similar as above</td></tr>
<tr><td>41 </td><td>    tbodygyrojerkmagmean</td><td>similar as above</td></tr>
<tr><td>42 </td><td>     tbodygyrojerkmagstd</td><td>similar as above</td></tr>
<tr><td>43 </td><td>           fbodyaccmeanx</td><td>similar as above</td></tr>
<tr><td>44 </td><td>           fbodyaccmeany</td><td>similar as above</td></tr>
<tr><td>45 </td><td>           fbodyaccmeanz</td><td>similar as above</td></tr>
<tr><td>46 </td><td>            fbodyaccstdx</td><td>similar as above</td></tr>
<tr><td>47 </td><td>            fbodyaccstdy</td><td>similar as above</td></tr>
<tr><td>48 </td><td>            fbodyaccstdz</td><td>similar as above</td></tr>
<tr><td>49 </td><td>       fbodyaccjerkmeanx</td><td>similar as above</td></tr>
<tr><td>50 </td><td>       fbodyaccjerkmeany</td><td>similar as above</td></tr>
<tr><td>51 </td><td>       fbodyaccjerkmeanz</td><td>similar as above</td></tr>
<tr><td>52 </td><td>        fbodyaccjerkstdx</td><td>similar as above</td></tr>
<tr><td>53 </td><td>        fbodyaccjerkstdy</td><td>similar as above</td></tr>
<tr><td>54 </td><td>        fbodyaccjerkstdz</td><td>similar as above</td></tr>
<tr><td>55 </td><td>          fbodygyromeanx</td><td>similar as above</td></tr>
<tr><td>56 </td><td>          fbodygyromeany</td><td>similar as above</td></tr>
<tr><td>57 </td><td>          fbodygyromeanz</td><td>similar as above</td></tr>
<tr><td>58 </td><td>           fbodygyrostdx</td><td>similar as above</td></tr>
<tr><td>59 </td><td>           fbodygyrostdy</td><td>similar as above</td></tr>
<tr><td>60 </td><td>           fbodygyrostdz</td><td>similar as above</td></tr>
<tr><td>61 </td><td>         fbodyaccmagmean</td><td>similar as above</td></tr>
<tr><td>62 </td><td>          fbodyaccmagstd</td><td>similar as above</td></tr>
<tr><td>63 </td><td> fbodybodyaccjerkmagmean</td><td>similar as above</td></tr>
<tr><td>64 </td><td>  fbodybodyaccjerkmagstd</td><td>similar as above</td></tr>
<tr><td>65 </td><td>    fbodybodygyromagmean</td><td>similar as above</td></tr>
<tr><td>66 </td><td>     fbodybodygyromagstd</td><td>similar as above</td></tr>
<tr><td>67 </td><td>fbodybodygyrojerkmagmean</td><td>similar as above</td></tr>
<tr><td>68 </td><td> fbodybodygyrojerkmagstd</td><td>similar as above</td></tr>
</table>
