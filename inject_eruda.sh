line=$(grep -n "</head>" pokerogue/index.html | cut -d ":" -f 1)i
#echo $line

eruda_html="<script src=\\\"http://cdn.jsdelivr.net/npm/eruda\\\"></script><script>eruda.init();</script>"
#echo $eruda_html

pattern="${line} ${eruda_html}"
#echo $pattern

cmd="sed -i \"${pattern}\" ./pokerogue/index.html"
#echo $cmd

echo $cmd | bash &&

echo "Injected Eruda!"
