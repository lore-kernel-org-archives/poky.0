Return-Path: <thughes@uplogix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3929CE006B3; Tue, 14 Aug 2018 09:14:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [199.244.76.202 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 485 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Aug 2018 09:14:03 PDT
Received: from s05-gw002.mycloudmailbox.com (s05-gw002.mycloudmailbox.com
	[199.244.76.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4BC3E0049F
	for <poky@yoctoproject.org>; Tue, 14 Aug 2018 09:14:03 -0700 (PDT)
Received: from S05-MBX03-20.S05.local (unknown [10.30.33.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by s05-gw002.mycloudmailbox.com (Postfix) with ESMTPS id
	41qcs16PChzVs7l
	for <poky@yoctoproject.org>; Tue, 14 Aug 2018 12:05:57 -0400 (EDT)
Received: from S05-MBX03-14.S05.local (10.30.33.93) by S05-MBX03-20.S05.local
	(10.30.33.118) with Microsoft SMTP Server (TLS) id 15.0.1367.3;
	Tue, 14 Aug 2018 12:05:57 -0400
Received: from S05-MBX03-14.S05.local ([10.30.17.111]) by
	S05-MBX03-14.S05.local ([10.30.17.111]) with mapi id 15.00.1367.000;
	Tue, 14 Aug 2018 12:05:57 -0400
From: Thomas Hughes <thughes@uplogix.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: rootfs-postcommands "cmd<space>;<space"
Thread-Index: AdQz6K9X5yvfJMgsQOuVN4AhlqjITQ==
Date: Tue, 14 Aug 2018 16:05:56 +0000
Message-ID: <7e721bc034514996872419152aaf0415@S05-MBX03-14.S05.local>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.30.32.120]
x-routingagent: Treated
MIME-Version: 1.0
Subject: rootfs-postcommands "cmd<space>;<space"
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Aug 2018 16:14:05 -0000
X-Groupsio-MsgNum: 11366
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_7e721bc034514996872419152aaf0415S05MBX0314S05local_"

--_002_7e721bc034514996872419152aaf0415S05MBX0314S05local_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I wanted to stop the *-<ts>.testdata.json from filling up my dirs
by using ROOTFS_POSTPROCESS_COMMAND_remove=3D"write_image_test_data;"
(... why that's not being auto cleaned up is a legitimate question,
but actually not the purpose of this email/patch ...)

My plan works great if rootfs-postcommands.bbclass did not add
(?some?) commands using "cmd ; " ... with an extra <space>.

Is there some other/better way to remove one POSTPROCESS cmd?
(... without using "elaborate" inline python magic?)
Is there any reason to keep extra <space> characters in there?

Could someone please consider/commit this .patch wherever it
needs to go, to make it into the next poky release?
The attached .patch was based on /poky-contrib/ last week.
(Sorry, my email client(s) mangle the .patch "inside" email)


"summary" of the attached patch:

    avoid [SPACE] so ROOTFS_POSTPROCESS_COMMAND_remove=3D"cmd;" works
    example of this problem: "x ; y ; z;"
    ..._remove=3D"y" causes "x ; ; z;" (invalid cmd '')
    ..._remove=3D"y ;" causes "x z;" (invalid cmd 'x z')
...
diff --git a/meta/classes/rootfs-postcommands.bbclass
...
-ROOTFS_POSTPROCESS_COMMAND ... "zap_empty_root_password ; ",d)}'
+ROOTFS_POSTPROCESS_COMMAND ... "zap_empty_root_password; ",d)}'
...=20
-ROOTFS_POSTPROCESS_COMMAND +=3D "rootfs_update_timestamp ; "
+ROOTFS_POSTPROCESS_COMMAND +=3D "rootfs_update_timestamp; "
...
-ROOTFS_POSTPROCESS_COMMAND +=3D "write_image_test_data ; "
+ROOTFS_POSTPROCESS_COMMAND +=3D "write_image_test_data; "
...
-ROOTFS_POSTUNINSTALL_COMMAND =3D+ "write_image_manifest ; "
+ROOTFS_POSTUNINSTALL_COMMAND =3D+ "write_image_manifest; "

--_002_7e721bc034514996872419152aaf0415S05MBX0314S05local_
Content-Type: text/plain; name="ROOTFS_POSTPROCESS_no_space.txt"
Content-Description: ROOTFS_POSTPROCESS_no_space.txt
Content-Disposition: attachment; filename="ROOTFS_POSTPROCESS_no_space.txt";
	size=2542; creation-date="Tue, 14 Aug 2018 15:45:47 GMT";
	modification-date="Tue, 14 Aug 2018 15:46:05 GMT"
Content-Transfer-Encoding: base64

ICAgIGF2b2lkIFtTUEFDRV0gc28gUk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1BTkRfcmVtb3ZlPSJj
bWQ7IiB3b3JrcwogICAgZXhhbXBsZSBvZiB0aGlzIHByb2JsZW06ICJ4IDsgeSA7IHo7IgogICAg
Li4uX3JlbW92ZT0ieSIgY2F1c2VzICJ4IDsgOyB6OyIgKGludmFsaWQgY21kICcnKQogICAgLi4u
X3JlbW92ZT0ieSA7IiBjYXVzZXMgInggejsiIChpbnZhbGlkIGNtZCAneCB6JykKCmRpZmYgLS1n
aXQgYS9tZXRhL2NsYXNzZXMvcm9vdGZzLXBvc3Rjb21tYW5kcy5iYmNsYXNzIGIvbWV0YS9jbGFz
c2VzL3Jvb3Rmcy1wb3N0Y29tbWFuZHMuYmJjbGFzcwppbmRleCBjYTY5MGE2Li4yNTkyOGM4IDEw
MDY0NAotLS0gYS9tZXRhL2NsYXNzZXMvcm9vdGZzLXBvc3Rjb21tYW5kcy5iYmNsYXNzCisrKyBi
L21ldGEvY2xhc3Nlcy9yb290ZnMtcG9zdGNvbW1hbmRzLmJiY2xhc3MKQEAgLTEsNiArMSw2IEBA
CiAKICMgWmFwIHRoZSByb290IHBhc3N3b3JkIGlmIGRlYnVnLXR3ZWFrcyBmZWF0dXJlIGlzIG5v
dCBlbmFibGVkCi1ST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCArPSAnJHtAYmIudXRpbHMuY29u
dGFpbnNfYW55KCJJTUFHRV9GRUFUVVJFUyIsIFsgJ2RlYnVnLXR3ZWFrcycsICdlbXB0eS1yb290
LXBhc3N3b3JkJyBdLCAiIiwgInphcF9lbXB0eV9yb290X3Bhc3N3b3JkIDsgIixkKX0nCitST09U
RlNfUE9TVFBST0NFU1NfQ09NTUFORCArPSAnJHtAYmIudXRpbHMuY29udGFpbnNfYW55KCJJTUFH
RV9GRUFUVVJFUyIsIFsgJ2RlYnVnLXR3ZWFrcycsICdlbXB0eS1yb290LXBhc3N3b3JkJyBdLCAi
IiwgInphcF9lbXB0eV9yb290X3Bhc3N3b3JkOyAiLGQpfScKIAogIyBBbGxvdyBkcm9wYmVhci9v
cGVuc3NoIHRvIGFjY2VwdCBsb2dpbnMgZnJvbSBhY2NvdW50cyB3aXRoIGFuIGVtcHR5IHBhc3N3
b3JkIHN0cmluZyBpZiBkZWJ1Zy10d2Vha3Mgb3IgYWxsb3ctZW1wdHktcGFzc3dvcmQgaXMgZW5h
YmxlZAogUk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1BTkQgKz0gJyR7QGJiLnV0aWxzLmNvbnRhaW5z
X2FueSgiSU1BR0VfRkVBVFVSRVMiLCBbICdkZWJ1Zy10d2Vha3MnLCAnYWxsb3ctZW1wdHktcGFz
c3dvcmQnIF0sICJzc2hfYWxsb3dfZW1wdHlfcGFzc3dvcmQ7ICIsICIiLGQpfScKQEAgLTEyLDcg
KzEyLDcgQEAgUk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1BTkQgKz0gJyR7QGJiLnV0aWxzLmNvbnRh
aW5zX2FueSgiSU1BR0VfRkVBVFVSRVMiLCBbICdkZWIKIFJPT1RGU19QT1NUUFJPQ0VTU19DT01N
QU5EICs9ICcke0BiYi51dGlscy5jb250YWluc19hbnkoIklNQUdFX0ZFQVRVUkVTIiwgWyAnZGVi
dWctdHdlYWtzJywgJ3Bvc3QtaW5zdGFsbC1sb2dnaW5nJyBdLCAicG9zdGluc3RfZW5hYmxlX2xv
Z2dpbmc7ICIsICIiLGQpfScKIAogIyBDcmVhdGUgL2V0Yy90aW1lc3RhbXAgZHVyaW5nIGltYWdl
IGNvbnN0cnVjdGlvbiB0byBnaXZlIGEgcmVhc29uYWJseSBzYW5lIGRlZmF1bHQgdGltZSBzZXR0
aW5nCi1ST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCArPSAicm9vdGZzX3VwZGF0ZV90aW1lc3Rh
bXAgOyAiCitST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCArPSAicm9vdGZzX3VwZGF0ZV90aW1l
c3RhbXA7ICIKIAogIyBUd2VhayB0aGUgbW91bnQgb3B0aW9ucyBmb3Igcm9vdGZzIGluIC9ldGMv
ZnN0YWIgaWYgcmVhZC1vbmx5LXJvb3RmcyBpcyBlbmFibGVkCiBST09URlNfUE9TVFBST0NFU1Nf
Q09NTUFORCArPSAnJHtAYmIudXRpbHMuY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgInJlYWQt
b25seS1yb290ZnMiLCAicmVhZF9vbmx5X3Jvb3Rmc19ob29rOyAiLCAiIixkKX0nCkBAIC0yNiwx
MSArMjYsMTEgQEAgUk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1BTkQgKz0gJyR7QGJiLnV0aWxzLmNv
bnRhaW5zKCJJTUFHRV9GRUFUVVJFUyIsICJyZWFkLW9ubHkKIEFQUEVORF9hcHBlbmQgPSAnJHtA
YmIudXRpbHMuY29udGFpbnMoIklNQUdFX0ZFQVRVUkVTIiwgInJlYWQtb25seS1yb290ZnMiLCAi
IHJvIiwgIiIsIGQpfScKIAogIyBHZW5lcmF0ZXMgdGVzdCBkYXRhIGZpbGUgd2l0aCBkYXRhIHN0
b3JlIHZhcmlhYmxlcyBleHBhbmRlZCBpbiBqc29uIGZvcm1hdAotUk9PVEZTX1BPU1RQUk9DRVNT
X0NPTU1BTkQgKz0gIndyaXRlX2ltYWdlX3Rlc3RfZGF0YSA7ICIKK1JPT1RGU19QT1NUUFJPQ0VT
U19DT01NQU5EICs9ICJ3cml0ZV9pbWFnZV90ZXN0X2RhdGE7ICIKIAogIyBXcml0ZSBtYW5pZmVz
dAogSU1BR0VfTUFOSUZFU1QgPSAiJHtJTUdERVBMT1lESVJ9LyR7SU1BR0VfTkFNRX0ucm9vdGZz
Lm1hbmlmZXN0IgotUk9PVEZTX1BPU1RVTklOU1RBTExfQ09NTUFORCA9KyAid3JpdGVfaW1hZ2Vf
bWFuaWZlc3QgOyAiCitST09URlNfUE9TVFVOSU5TVEFMTF9DT01NQU5EID0rICJ3cml0ZV9pbWFn
ZV9tYW5pZmVzdDsgIgogIyBTZXQgZGVmYXVsdCBwb3N0aW5zdCBsb2cgZmlsZQogUE9TVElOU1Rf
TE9HRklMRSA/PSAiJHtsb2NhbHN0YXRlZGlyfS9sb2cvcG9zdGluc3RhbGwubG9nIgogIyBTZXQg
ZGVmYXVsdCB0YXJnZXQgZm9yIHN5c3RlbWQgaW1hZ2VzCg==

--_002_7e721bc034514996872419152aaf0415S05MBX0314S05local_--
