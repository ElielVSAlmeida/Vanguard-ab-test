# Welcome to Vanguard-AB Test!

First of all, this project aims to show a sample of the habilities in statistical analysis with **Scipy** and **Statsmodels**, and vizualization tools like **Tableau** , the goal is understand the **Key Performance Indicators** metrics and how can it weight on the engagement of the user with the platform. The data was cleaned and formatted with **Pandas**, then it was upload on **MySQL** with **SQLConnector** and **SQLAlchemy**.

- Vanguard is one of the largest investment management funds in the world.

- Its model is based on an investor friendly practices with focus on the long term capitals.

- With all the competitors and challenges of the new digital area, new design and new features of the web services needed to be evaluated and tested.


# KPI

-	**Completion Rate**

	Test dependency of the group type and successful operation

-	**Time Spent on a Successful operation**

	Test group spends less time than control group

-	**Error**

	We define error when client return to *“start”*

	When steps don’t follow the correct order timewise

## Completion Rate

![alt text](https://github.com/ElielVSAlmeida/Vanguard-ab-test/tree/main/_Others/completion_rate.png)

## Time Spent on a Successful operation

![alt text](https://github.com/ElielVSAlmeida/Vanguard-ab-test/tree/main/_Others/average_successful_op.png)

## Return to Start Error

![alt text](https://github.com/ElielVSAlmeida/Vanguard-ab-test/tree/main/_Others/return_to_start.png)

## Timestamp Error

![alt text](https://github.com/ElielVSAlmeida/Vanguard-ab-test/tree/main/_Others/timestamp_readings.png)

# Conclusion

-   From the results we obtained, we can seethat there are differences between test and group control.
-   For completion rate we verified thatthere is a dependency between test and control group
-   For timestamp error, the test group hasstatistically better results than the control group.
-   For time spent and return to start error,control group have statistically better results.
-   With these insights, the product needs tobe improved and more data is necessary to evaluate the efficiency of the new product.