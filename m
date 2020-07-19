Subject: How to add python debugger "epdb" module in recipe
To: poky@lists.yoctoproject.org
From: "Ashish" <ashishm@mvista.com>
X-Originating-Location: Mumbai, Maharashtra, IN (45.248.21.177)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 19 Jul 2020 00:55:12 -0700
Message-ID: <LMzk.1595145312278580104.QGYU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uSK1a6hEbDTLjpdloFZv"

--uSK1a6hEbDTLjpdloFZv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,

- I am trying to add epdb " https://pypi.org/project/epdb/ " in the recipe=
 by
adding *import epdb; epdb.set_trace()* in=C2=A0 the recipe .
But getting error of Exception: ModuleNotFoundError: No module named 'epdb=
'
*
*
File: '/home/ashish/project/../layers/poky/meta/recipes-devtools/python/py=
thon3_3.8.2.bb', lineno: 221, function: __anon_288__home_ashish_edge_gatewa=
y_yocto_layers_forked_opencgx_rasberrypi_opencgx_rasberrypi_project____laye=
rs_poky_meta_recipes_devtools_python_python3_3_8_2_bb
0217:=C2=A0 =C2=A0 # This python changes the datastore based on the conten=
ts of a file, so mark
0218:=C2=A0 =C2=A0 # that dependency.
0219:=C2=A0 =C2=A0 bb.parse.mark_dependency(d, filename)
0220:
**** 0221:=C2=A0 =C2=A0 import epdb; epdb.set_trace();*
0222:
0223:=C2=A0 =C2=A0 with open(filename) as manifest_file:
0224:=C2=A0 =C2=A0 =C2=A0 =C2=A0 manifest_str =3D=C2=A0 manifest_file.read=
()
0225:=C2=A0 =C2=A0 =C2=A0 =C2=A0 json_start =3D manifest_str.find('# EOC')=
 + 6
*Exception: ModuleNotFoundError: No module named 'epdb'*

Any pointers on same would be helpful ,

--
Thanks ,
Ashish .

--uSK1a6hEbDTLjpdloFZv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,&nbsp;<br /><br />- I am trying to add epdb " <a href=3D"https://py=
pi.org/project/epdb/" target=3D"_blank" rel=3D"noopener">https://pypi.org/p=
roject/epdb/</a>&nbsp;" in the recipe by&nbsp;<br />
<div>&nbsp; adding&nbsp; <strong>&nbsp;import epdb; epdb.set_trace()&nbsp;=
&nbsp;</strong>in&nbsp; the recipe .&nbsp;<br />&nbsp; But getting error of=
&nbsp;&nbsp;<span style=3D"font-weight: bold;">Exception: ModuleNotFoundErr=
or: No module named 'epdb'</span><br /><strong><br /></strong>
<div>File: '/home/ashish/project/../layers/poky/meta/recipes-devtools/pyth=
on/python3_3.8.2.bb', lineno: 221, function: __anon_288__home_ashish_edge_g=
ateway_yocto_layers_forked_opencgx_rasberrypi_opencgx_rasberrypi_project___=
_layers_poky_meta_recipes_devtools_python_python3_3_8_2_bb</div>
<div>&nbsp; &nbsp; &nbsp;0217:&nbsp; &nbsp; # This python changes the data=
store based on the contents of a file, so mark</div>
<div>&nbsp; &nbsp; &nbsp;0218:&nbsp; &nbsp; # that dependency.</div>
<div>&nbsp; &nbsp; &nbsp;0219:&nbsp; &nbsp; bb.parse.mark_dependency(d, fi=
lename)</div>
<div>&nbsp; &nbsp; &nbsp;0220:</div>
<div><strong>&nbsp;*** 0221:&nbsp; &nbsp; import epdb; epdb.set_trace();</=
strong></div>
<div>&nbsp; &nbsp; &nbsp;0222:</div>
<div>&nbsp; &nbsp; &nbsp;0223:&nbsp; &nbsp; with open(filename) as manifes=
t_file:</div>
<div>&nbsp; &nbsp; &nbsp;0224:&nbsp; &nbsp; &nbsp; &nbsp; manifest_str =3D=
&nbsp; manifest_file.read()</div>
<div>&nbsp; &nbsp; &nbsp;0225:&nbsp; &nbsp; &nbsp; &nbsp; json_start =3D m=
anifest_str.find('# EOC') + 6</div>
<div><strong>Exception: ModuleNotFoundError: No module named 'epdb'</stron=
g><br /><br />Any pointers on same would be helpful ,&nbsp;<br /><br /></di=
v>
</div>
-- <br />Thanks ,<br />Ashish .

--uSK1a6hEbDTLjpdloFZv--
