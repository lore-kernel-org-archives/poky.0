Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E50684C8122E
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 01:59:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Dec 2010 23:59:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="359218173"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 08 Dec 2010 23:59:44 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 15:59:26 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 9 Dec 2010
	15:59:25 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<rpurdie@linux.intel.com>
Date: Thu, 9 Dec 2010 15:59:24 +0800
Thread-Topic: [poky] About the operator "??="
Thread-Index: AcuW5Y8tZ+5zUqC7SWSnffd4RmnlKQAXOySQAAaGrWAABjbIcA==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
	<1291819067.1554.606.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: About the operator "??="
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Dec 2010 07:59:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tian, Kevin wrote:
>> From: Xu, Dongxiao
>> Sent: Thursday, December 09, 2010 11:33 AM
>>>=20
>>> Thanks, that is quite a significant difference.
>>>=20
>>> Could you try working out how often getVar returns a "None" value?
>>> I'm wondering if we should add something to getVar that if it is
>>> about to return None, it checks for the default value flag and
>>> returns that if set. Originally ??=3D wasn't implemented that way do
>>> to performance concerns but I think we need to recheck that!
>>=20
>> Hi Richard,
>>=20
>> During the file parsing process, the getVar is called
>> "1435156/1148654"=20
>> times (actually I am still confused what "/" means...), and among
>> them, 322121 times of getVar call return "None", thus about 1/3 or
>> 1/4 of the total calls.=20
>>=20
>> I tried to use the following patch to have a test. Also I paste a
>> profile log.=20
>> From the result we can see it has over 15% performance gain. (from
>> 39.3=20
>> secs to 33.7 secs).
>>=20
>> In usermanual, the "??=3D" definition is:
>>=20
>> Setting a default value (??=3D)
>> 	A ??=3D "somevalue"
>> 	A ??=3D "someothervalue"
>> If A is set before the above, it will retain that value.  If A is
>> unset=20
>> prior to the above, A will be set to someothervalue.  This is a lazy
>> version of ?=3D, in that the assignment does not occur until the end of
>> the parsing process, so that the last, rather than the first, ??=3D
>> assignment to a given variable will be used.=20
>>=20
>> Our patch logic isn't strickly following the "??=3D" definition, since
>> the assignment doesn't occurs in end of parsing process...
>> Except this one, I think other behaviors for ??=3D do not change.
>=20
> I think it is, as long as a getVar on a variable happens after all
> the evaluations of that variable which I think should be true or else
> even current design has problem. In that way when evaluating variable
> assignments, you keep 'defaultvalue' updated until the last "??=3D"
> assignment. Then later a getVar() on that variable happens which then
> you just return the right defaultvalue. :-)   =20

Agree.

>=20
>>=20
>> diff --git a/bitbake/lib/bb/data_smart.py
>> b/bitbake/lib/bb/data_smart.py index b9d9476..14ac305 100644
>> --- a/bitbake/lib/bb/data_smart.py
>> +++ b/bitbake/lib/bb/data_smart.py
>> @@ -246,6 +246,9 @@ class DataSmart:
>>     def getVar(self, var, exp):
>>         value =3D self.getVarFlag(var, "content")
>>=20
>> +        if value =3D=3D None:
>> +            value =3D self.getVarFlag(var, "defaultval") +
>>         if exp and value:
>>             return self.expand(value, var)
>>         return value
>> diff --git a/bitbake/lib/bb/parse/ast.py
>> b/bitbake/lib/bb/parse/ast.py=20
>> index 870ae65..1ccda82 100644
>> --- a/bitbake/lib/bb/parse/ast.py
>> +++ b/bitbake/lib/bb/parse/ast.py
>> @@ -109,10 +109,8 @@ class DataNode(AstNode):
>>         if 'flag' in groupd and groupd['flag'] !=3D None:
>>             bb.data.setVarFlag(key, groupd['flag'], val, data)
>>         elif groupd["lazyques"]:
>> -            assigned =3D bb.data.getVar("__lazy_assigned", data) or []
>> -            assigned.append(key)
>> -            bb.data.setVar("__lazy_assigned", assigned, data)
>>             bb.data.setVarFlag(key, "defaultval", val, data)
>> +            bb.data.setVar(key, None, data)
>=20
> This I think is incorrect. You actually wiped out previous assignment
> before ??=3D, and thus end up to always have default value favored
> unless there're other direct assignments after ??=3D evaluation. Just
> touch the flag should be enough.  =20

Ah, yes, I need to check whether the value has been setVar before, see foll=
owing patch.=20

This two lines are necessary in the following patch

+            if bb.data.getVarFlag(key, "content", data) is None:
+                bb.data.setVar(key, None, data)

because setVar will add the key into override list, which could not be achi=
eved by just calling "setVarFlag". For the later formal patch, I will add c=
omments on the two lines.

The performance for the revised patch is more or less the same as previous,=
 so I didn't paste the profile result.

Thanks,
Dongxiao

diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
index b9d9476..771e480 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -246,6 +246,9 @@ class DataSmart:
     def getVar(self, var, exp):
         value =3D self.getVarFlag(var, "content")

+        if value is None:
+            value =3D self.getVarFlag(var, "defaultval")
+
         if exp and value:
             return self.expand(value, var)
         return value
diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/lib/bb/parse/ast.py
index 870ae65..e31063d 100644
--- a/bitbake/lib/bb/parse/ast.py
+++ b/bitbake/lib/bb/parse/ast.py
@@ -109,10 +109,9 @@ class DataNode(AstNode):
         if 'flag' in groupd and groupd['flag'] !=3D None:
             bb.data.setVarFlag(key, groupd['flag'], val, data)
         elif groupd["lazyques"]:
-            assigned =3D bb.data.getVar("__lazy_assigned", data) or []
-            assigned.append(key)
-            bb.data.setVar("__lazy_assigned", assigned, data)
             bb.data.setVarFlag(key, "defaultval", val, data)
+            if bb.data.getVarFlag(key, "content", data) is None:
+                bb.data.setVar(key, None, data)
         else:
             bb.data.setVar(key, val, data)

@@ -301,10 +300,6 @@ def handleInherit(statements, m):
     statements.append(InheritNode(m.group(1)))

 def finalize(fn, d, variant =3D None):
-    for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
-        if bb.data.getVar(lazykey, d) is None:
-            val =3D bb.data.getVarFlag(lazykey, "defaultval", d)
-            bb.data.setVar(lazykey, val, d)

     bb.data.expandKeys(d)
     bb.data.update_data(d)

>=20
>>         else:
>>             bb.data.setVar(key, val, data)
>>=20
>> @@ -301,10 +299,6 @@ def handleInherit(statements, m):
>>     statements.append(InheritNode(m.group(1)))
>>=20
>> def finalize(fn, d, variant =3D None):
>> -    for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
>> -        if bb.data.getVar(lazykey, d) is None:
>> -            val =3D bb.data.getVarFlag(lazykey, "defaultval", d)
>> -            bb.data.setVar(lazykey, val, d)
>>=20
>>     bb.data.expandKeys(d)
>>     bb.data.update_data(d)
>=20
> Thanks
> Kevin


