# bioPatternsg
Sistema para el modelado y análisis de redes de regulación genética.
BioPatterns recibe una colección de objetos de interés y organiza automáticamente bases de conocimiento relativas a tales objetos y sus posibles interacciones.
Autores: José Lopez <josesmooth@gmail.com>, Yacson Ramirez <yacson.ramirez@gmail.com>, Jacinto Davila <jacinto.davila@gmail.com>


Para el ejemplo que aquí se describe el listado de objetos corresponde al COVID-19 y al sistema inmune; siendo estos en particular:

JAK3,STAT,SARS-CoV-2,SARS-CoV,ORF6,IMPORTIN,MHC,CD4,CD8,MICA,MICB,MICC,HLA-A,HLA-B,HLA-C,CCR5,CXCR4,ACE2,COVID-19,'Severe Acute Respiratory Syndrome'

HLA-C,STAT3,CXCR4,MICA,CD4,JAK3,STAT1,COVID-19

JAK3,JAK1,STAT1,STAT2,STAT3,STAT4,STAT5A,STAT5B,STAT6,IPO4,IPO5,IPO7,IPO8,IPO9,IPO11,IPO13,IPO5P1,MICA,MICB,HLA-A,HLA-B,HLA-C,CCR5,ORF6,ORF8,CD4,CD8,CCR5,CXCR4,ACE2,COVID-19,IFNG,IFNA1,IFNB1,IFNGR1,IFNAR1,IFNA8,IFNA,IFNL1,IFN1@,IFNA3,IFN-ALPHA-14,IFNA21,DEXAMETHASONE,HYDROXYCHLOROQUINE,REMDESIVIR,lopinavir-ritonavir,CHLOROQUINE,TOCILIZUMAB,FAVIPIRAVIR,IVERMECTIN,CHLORINE

JAK3,JAK1,STAT,IMPORTIN,MICA,MICB,HLA-A,HLA-B,HLA-C,CCR5,ORF6,ORF8,CD4,CD8,CCR5,CXCR4,ACE2,COVID-19,INTERFERON,DEXAMETHASONE,HYDROXYCHLOROQUINE,REMDESIVIR,lopinavir-ritonavir,CHLOROQUINE,TOCILIZUMAB,FAVIPIRAVIR,IVERMECTIN,CHLORINE

El siguiente listado describe el contenido y funcionalidad de cada una de las bases de conocimiento generadas y la documentacion que las acompana:

kBase.pl: Contiene el listado general de eventos de regulación propuestos por el sistema para la colección de objetos de interés.

kBaseDoc.txt: Contiene los eventos descritos en kBase.pl, acompañados de las oraciones desde las que estos se construyen.

pathways.txt: Describe la colección de patrones de regulación (pathways) propuestos por el sistema para la colección de objetos de interés. Los patrones terminan en los objetos de cierre que el usuario haya indicado; por ejemplo SARS-CoV-2, STAT, y ORF6.

eventsDoc.txt: Contiene SOLO los eventos que dan forma a la colección de patrones presentes pathways.txt. Su contenido se define desde kBaseDoc.txt y pathways.txt. El archivo eventsDoc.txt pretende facilitar al usuario la revisión de la documentación relativa a los patrones que el sistema le ha propuesto en pathways.txt.

kBaseR.pl: Corresponde a una versión generalizada de kBase.pl. Su finalidad es modelar una colección de eventos reducida que favorezca tanto la búsqueda de los patrones, como la representación gráfica de estos. Los eventos se generalizan empleando la noción de eventos sinónimos. Por ejemplo, los eventos event('A',bind,'B'), event('A',recognize,'B') y event('A',interact,'B'), se reducen a event('A',bind,'B'). Esta reducción no implica perdida de información pues el sistema reporta todas las oraciones que documentan cada variante posible de cada evento.

kBaseP.pl: Contiene el subconjunto de eventos definidos desde kBaseR.pl que dan forma a los patrones propuestos en pathways.txt. Este archivo hace posible la representación gráfica de la red de patrones y permite, junto a kBaseDoc.txt, definir el contenido de eventDoc.txt.

pathwaysDoc.txt: Se refiere a los pathways listados en pathways.txt, acompañados del desglose de los eventos de cada pathway y las oraciones desde las que estos son propuestos. Así como eventDoc.txt permite revisar el conocimiento desde el cual se proponen los eventos de regulación, pathwaysDoc.txt ofrece la posibilidad de revisar el conocimiento desde el cual se propone cada patrón.

pathwaysObjects.pl: Describe la identidad asignada a los objetos de interés. La identidad se refiere a si se trata de un ligando, un receptor, una proteína o un factor de transcripción. En principio el sistema asigna automáticamente los roles de cada objeto pero esta es revisada manualmente. Solo los objetos del tipo ligando o receptor pueden iniciar patrones de regulación y todo patrón termina con un objeto objetivo de tipo proteína. Los roles guían la exploración de los patrones en la base de conocimiento kBaseR.pl.  

network-<colección de objetos>-<fecha de impresión>.jpg: Corresponde a la representación gráfica de los eventos presentes en los patrones listados en pathways.txt. <colección de objetos> indica los objetos de cierre para los patrones en pathways.txt.
<fecha de impresión> permite diferenciar un gráfico de otro en caso de que se trate de una misma colección de objetos de cierre.

minedObjects.txt: define todos los identificadores estándares actualmente definidos para la colección de interés, mas para aquellos factores de transcripción (FTs) obtenidos automáticamente. Los FTs se definen desde la región de regulación ofrecida al sistema (en este caso la del SARS-Cov-2). Este listado también incluye objetos que PDB propone vinculados a los FTs propuestos. Cada identificador tiene asociada una linea donde primero se indica el nombre estándar del objeto y los sinónimos que el sistema logra proponer automáticamente.

relations-functions.txt: Establece las interacciones sinónimas para cada una de las interacciones genéricas que el sistema maneja, en este caso: regulate, inhibit, associate y bind. Puede verse, por ejemplo, que para el sistema las interacciones bind, interact, activate y recognize son sinónimas.

<object-name>_chainsPathways.txt: Describe cadenas de patrones conectados (subredes) que describen escenarios de regulación e inhibición para un objeto biologico de interés.

