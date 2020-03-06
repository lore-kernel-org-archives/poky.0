Subject: [PATCH] new method for loading cache, an improment on incremental build
To: poky@lists.yoctoproject.org
From: zhangyifan46@huawei.com
X-Originating-Location: HK (116.66.184.171)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Mar 2020 17:43:18 -0800
Message-ID: <iWM4.1583458998618451050.eYjk@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EQivVIzLQf4xFWhco0CG"

--EQivVIzLQf4xFWhco0CG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In our project,we have over 4000 patches and 300hundred bb's. Then loading =
cache in incremental build is very slow.
I figured out that it is due to a problem algorithm in cache.py
And i have give out a improvement.
the old method is O(N^2) time complexity and new one is O(N)
diff --git a/poky-sumo-19.0.1/bitbake/lib/bb/cache.py b/poky-sumo-19.0.1/b=
itbake/lib/bb/cache.py
old mode 100644
new mode 100755
index 168a77ac0..753d074f7
--- a/poky-sumo-19.0.1/bitbake/lib/bb/cache.py
+++ b/poky-sumo-19.0.1/bitbake/lib/bb/cache.py
@@ -610,31 +610,38 @@ class Cache(NoCache):
                                    fn, f)
                    self.remove(fn)
                    return False
-
+        import re
        if hasattr(info_array[0], 'file_checksums'):
            for _, fl in info_array[0].file_checksums.items():
                fl =3D fl.strip()
-                while fl:
-                    # A .split() would be simpler but means spaces or col=
ons in filenames would break
-                    a =3D fl.find(":True")
-                    b =3D fl.find(":False")
-                    if ((a < 0) and b) or ((b > 0) and (b < a)):
-                        f =3D fl[:b+6]
-                        fl =3D fl[b+7:]
-                    elif ((b < 0) and a) or ((a > 0) and (a < b)):
-                        f =3D fl[:a+5]
-                        fl =3D fl[a+6:]
-                    else:
-                        break
-                    fl =3D fl.strip()
-                    if "*" in f:
-                        continue
-                    f, exist =3D f.split(":")
-                    if (exist =3D=3D "True" and not os.path.exists(f)) or=
 (exist =3D=3D "False" and os.path.exists(f)):
-                        logger.debug(2, "Cache: %s's file checksum list f=
ile %s changed",
-                                        fn, f)
+                flist=3Dre.split(r'(:True|:False)',fl)
+                for i in range(len(flist)):
+                    if ( ":True" =3D=3D flist[i].strip() and not os.path.=
exists(flist[i-1].strip())) or ( ":False" =3D=3D flist[i].strip() and  os.p=
ath.exists(flist[i-1].strip())):
+                        logger.error(2, "Cache: %s's file checksum list f=
ile %s changed",
+                                        fn, flist[i-1])
                        self.remove(fn)
                        return False
+                #while fl:
+                    # A .split() would be simpler but means spaces or col=
ons in filenames would break
+                    #a =3D fl.find(":True")
+                    #b =3D fl.find(":False")
+                    #if ((a < 0) and b) or ((b > 0) and (b < a)):
+                        #f =3D fl[:b+6]
+                        #fl =3D fl[b+7:]
+                    #elif ((b < 0) and a) or ((a > 0) and (a < b)):
+                        #f =3D fl[:a+5]
+                        #fl =3D fl[a+6:]
+                    #else:
+                        #break
+                    #fl =3D fl.strip()
+                    #if "*" in f:
+                        #continue
+                    #f, exist =3D f.split(":")
+                    #if (exist =3D=3D "True" and not os.path.exists(f)) o=
r (exist =3D=3D "False" and os.path.exists(f)):
+                        #logger.debug(2, "Cache: %s's file checksum list =
file %s changed",
+                                        #fn, f)
+                        #self.remove(fn)
+                        #return False

        if appends !=3D info_array[0].appends:
            logger.debug(2, "Cache: appends for %s changed", fn)

--EQivVIzLQf4xFWhco0CG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<table class=3D"bz_comment_table" style=3D"color: #000000; font-family: Ver=
dana, sans-serif; font-size: small; background-color: #ffffff;" cellspacing=
=
=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td style=3D"font-family: Verdana, sans-serif; font-size: small; vertical-=
align: top;">
<div id=3D"c0" class=3D"bz_comment bz_first_comment" style=3D"margin-botto=
m: 2em;">
<div class=3D"bz_first_comment_head" style=3D"padding-top: 0.1em; padding-=
bottom: 0.1em; padding-left: 0.5em; background-color: #e0e0e0;">&nbsp;</div=
>
<pre id=3D"comment_text_0" class=3D"bz_comment_text" style=3D"font-size: m=
edium; font-family: monospace; white-space: pre-wrap; width: 50em;">In our =
project,we have over 4000 patches and 300hundred bb's. Then loading cache i=
n incremental build is very slow.
I figured out that it is due to a problem algorithm in cache.py
And i have give out a improvement.<br />the old method is O(N^2) time comp=
lexity and new one is O(N)
diff --git a/poky-sumo-19.0.1/bitbake/lib/bb/cache.py b/poky-sumo-19.0.1/b=
itbake/lib/bb/cache.py
old mode 100644
new mode 100755
index 168a77ac0..753d074f7
--- a/poky-sumo-19.0.1/bitbake/lib/bb/cache.py
+++ b/poky-sumo-19.0.1/bitbake/lib/bb/cache.py
@@ -610,31 +610,38 @@ class Cache(NoCache):
                                     fn, f)
                     self.remove(fn)
                     return False
-
+        import re
         if hasattr(info_array[0], 'file_checksums'):
             for _, fl in info_array[0].file_checksums.items():
                 fl =3D fl.strip()
-                while fl:
-                    # A .split() would be simpler but means spaces or col=
ons in filenames would break
-                    a =3D fl.find(":True")
-                    b =3D fl.find(":False")
-                    if ((a &lt; 0) and b) or ((b &gt; 0) and (b &lt; a)):
-                        f =3D fl[:b+6]
-                        fl =3D fl[b+7:]
-                    elif ((b &lt; 0) and a) or ((a &gt; 0) and (a &lt; b)=
):
-                        f =3D fl[:a+5]
-                        fl =3D fl[a+6:]
-                    else:
-                        break
-                    fl =3D fl.strip()
-                    if "*" in f:
-                        continue
-                    f, exist =3D f.split(":")
-                    if (exist =3D=3D "True" and not os.path.exists(f)) or=
 (exist =3D=3D "False" and os.path.exists(f)):
-                        logger.debug(2, "Cache: %s's file checksum list f=
ile %s changed",
-                                        fn, f)
+                flist=3Dre.split(r'(:True|:False)',fl)
+                for i in range(len(flist)):
+                    if ( ":True" =3D=3D flist[i].strip() and not os.path.=
exists(flist[i-1].strip())) or ( ":False" =3D=3D flist[i].strip() and  os.p=
ath.exists(flist[i-1].strip())):
+                        logger.error(2, "Cache: %s's file checksum list f=
ile %s changed",
+                                        fn, flist[i-1])
                         self.remove(fn)
                         return False
+                #while fl:
+                    # A .split() would be simpler but means spaces or col=
ons in filenames would break
+                    #a =3D fl.find(":True")
+                    #b =3D fl.find(":False")
+                    #if ((a &lt; 0) and b) or ((b &gt; 0) and (b &lt; a))=
:
+                        #f =3D fl[:b+6]
+                        #fl =3D fl[b+7:]
+                    #elif ((b &lt; 0) and a) or ((a &gt; 0) and (a &lt; b=
)):
+                        #f =3D fl[:a+5]
+                        #fl =3D fl[a+6:]
+                    #else:
+                        #break
+                    #fl =3D fl.strip()
+                    #if "*" in f:
+                        #continue
+                    #f, exist =3D f.split(":")
+                    #if (exist =3D=3D "True" and not os.path.exists(f)) o=
r (exist =3D=3D "False" and os.path.exists(f)):
+                        #logger.debug(2, "Cache: %s's file checksum list =
file %s changed",
+                                        #fn, f)
+                        #self.remove(fn)
+                        #return False

         if appends !=3D info_array[0].appends:
             logger.debug(2, "Cache: appends for %s changed", fn)</pre>
</div>
</td>
</tr>
</tbody>
</table>

--EQivVIzLQf4xFWhco0CG--
