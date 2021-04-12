#! /bin/bash
while read dom; do
 for rec in A AAAA MX CNAME TXT; do
    result=$(dig $dom $rec +short)
  if [[ ! -z $result ]]; then

    echo $rec of $dom is $result
fi
done
done < domain.txt
