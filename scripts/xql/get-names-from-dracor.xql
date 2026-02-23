xquery version "3.0";

declare namespace tei = "http://www.tei-c.org/ns/1.0"; 

(: output declations :)
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization"; 
declare option output:method "text"; 

(: local constants :)
declare variable $local:new-line := "&#x0A;";
declare variable $local:sep := "&#x09;";

(: external script params :)
declare variable $data-path external;


(: main script :)
string-join(
  (
    (: header :)
    string-join(
      (
        "text",
        "date",
        "name"
      ),
      $local:sep
    ),

    (: data :)
    for $text in collection("file://" || $data-path || "?select=*.xml;recurse=yes")//tei:TEI
    let $id := $text/@xml:id
    let $print-date := $text//tei:standOff//tei:event[@type="print"]/@when
    where $id and $print-date

    for $name in $text//tei:particDesc//tei:person[not(@sex = "UNKNOWN")]/tei:persName[not(matches(normalize-space(.), "^(Ein|Der|Die|Das|(Erst|Zweit|Dritt|Viert|Fünft|Sechst|Siebt|Acht|Neunt|Zehnt|Männlich|Weiblich|Ein|Ander)e[rs]?|[1-9IVX]+\.)( .*)?$")) and not(contains(., "Stimme")) and not(contains(., "Ruf"))]
    let $name := replace(normalize-space($name), "\(.*?\)", "")
    where $name
    return
      string-join(
        (
          $id,
          $print-date,
          $name
        ),
        $local:sep
      )
  ),
  $local:new-line
)

