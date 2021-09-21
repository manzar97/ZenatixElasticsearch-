to run this:

pip3 install -r requirements.txt
python3 process_monitor.py --help

Output:
usage: process_monitor.py [-h] [-c COLUMNS] [-s SORT_BY] [--descending] [-n N]

Process Viewer & Monitor

optional arguments:
-h, --help            show this help message and exit
-c COLUMNS, --columns COLUMNS
                        Columns to show, available are name,create_time,cores,
                        cpu_usage,status,nice,memory_usage,read_bytes,write_by
                        tes,n_threads,username. Default is name,cpu_usage,memo
                        ry_usage,read_bytes,write_bytes,status,create_time,nic
                        e,n_threads,cores.
-s SORT_BY, --sort-by SORT_BY
                        Column to sort by, default is memory_usage .
--descending          Whether to sort in descending order.
-n N                  Number of processes to show, will show all if 0 is
                        specified, default is 25 .

Examples:
Showing 10 processes sorted by create_time in ascending order:
python3 process_monitor.py --sort-by create_time -n 10

Output:
             name  cpu_usage memory_usage read_bytes write_bytes    status          create_time  nice  n_threads  cores
pid
1         systemd        0.0     187.92MB   242.47MB     27.64MB  sleeping  2019-09-09 10:56:21     0          1      4
19   kworker/1:0H        0.0        0.00B      0.00B       0.00B      idle  2019-09-09 10:56:21   -20          1      1
17    ksoftirqd/1        0.0        0.00B      0.00B       0.00B  sleeping  2019-09-09 10:56:21     0          1      1
16    migration/1        0.0        0.00B      0.00B       0.00B  sleeping  2019-09-09 10:56:21     0          1      1
15     watchdog/1        0.0        0.00B      0.00B       0.00B  sleeping  2019-09-09 10:56:21     0          1      1
13        cpuhp/0        0.0        0.00B      0.00B       0.00B  sleeping  2019-09-09 10:56:21     0          1      1
12     watchdog/0        0.0        0.00B      0.00B       0.00B  sleeping  2019-09-09 10:56:21     0          1      1
11    migration/0        0.0        0.00B      0.00B       0.00B  sleeping  2019-09-09 10:56:21     0          1      1
14        cpuhp/1        0.0        0.00B      0.00B       0.00B  sleeping  2019-09-09 10:56:21     0          1      1
9       rcu_sched        0.0        0.00B      0.00B       0.00B      idle  2019-09-09 10:56:21     0          1      4
