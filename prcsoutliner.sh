show procs(){
  printf `\n%s\n` "====top process"
  printf `%-10s %6s %s\n` USER CPU MEM COMMAND
  ps aux --sort=-%mem 'NR>1 && NR<=6
  {printf "%-10s %6s %s\n", $1, $3, $4, $11}'
}