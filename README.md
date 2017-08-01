# utl_shewhart
Shewhart comtrol graphs with only base SAS and R

    ```  SAS Forum: "Proc Shewhart" with Base SAS and R (IML/R SAS/WPS/R)  ```
    ```    ```
    ```  see  ```
    ```  https://goo.gl/srmxyb  ```
    ```  https://communities.sas.com/t5/SAS-Analytics-U/Does-University-edition-include-quot-Proc-Shewhart-quot/m-p/384188  ```
    ```    ```
    ```  see for more complex control charts  ```
    ```  https://cran.r-project.org/web/packages/qicharts/vignettes/controlcharts.html  ```
    ```    ```
    ```    ```
    ```     WORKING CODE  ```
    ```     ============  ```
    ```    ```
    ```         have<-read_sas("d:/sd1/have.sas7bdat");  ```
    ```         pdf("d:/pdf/shewart.pdf");  ```
    ```         qic(have$Y, chart = "i");  ```
    ```    ```
    ```  HAVE  ```
    ```  ====  ```
    ```    ```
    ```    Up to 40 obs SD1.HAVE total obs=25  ```
    ```    ```
    ```    Obs     X        Y  ```
    ```    ```
    ```      1     1     0.86503  ```
    ```      2     2     0.81118  ```
    ```      3     3    -1.04436  ```
    ```      4     4    -1.05649  ```
    ```      5     5    -1.74895  ```
    ```      6     6     0.56657  ```
    ```      7     7    -1.46444  ```
    ```      8     8     0.26030  ```
    ```      9     9    -0.65384  ```
    ```    ....  ```
    ```    ```
    ```  WANT  ```
    ```  ====  ```
    ```    ```
    ```    ```
    ```    Indicator  ```
    ```        |  ```
    ```    2.5 +---------------------------------------  2.5  ```
    ```        |  ```
    ```    2.0 +  ```
    ```        |  ```
    ```    1.5 +  ```
    ```        |  ```
    ```    1.0 +                          *  ```
    ```        |                               *  ```
    ```    0.5 +      *     *     *      *  ```
    ```        |         *             *            *  ```
    ```    0.0 +--------------*--*----------------*---- 0.19  ```
    ```        |                      *  ```
    ```   -0.5 +                    *       *  ```
    ```        |          *                      *  ```
    ```   -1.0 + **                           *  ```
    ```        |  ```
    ```   -1.5 +       *  ```
    ```        |    *          *  ```
    ```   -2.0 +  ```
    ```        |  ```
    ```   -2.5 +  ```
    ```        |--------------------------------------- -2.8  ```
    ```   -3.0 +  ```
    ```        -----+-------+-------+-------+-------+--  ```
    ```             5      10      15      20      25  ```
    ```                     Subgroup  ```
    ```    ```
    ```    ```
