$array = 11,12,13,14,15
for ($i=0; $i -lt $array.Length; $i++)
{
  "`$array[$i]=" + $array[$i]
}

$array = 11,12,13,14,15
foreach ($item in $array)
{
  "`$item = $item"
}
