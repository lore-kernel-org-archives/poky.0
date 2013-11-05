Return-Path: <keller.eric@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18CE5E0174E
	for <poky@yoctoproject.org>; Tue,  5 Nov 2013 15:06:27 -0800 (PST)
Received: by mail-ie0-f180.google.com with SMTP id e14so15793479iej.39
	for <poky@yoctoproject.org>; Tue, 05 Nov 2013 15:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=izorbjRuoScc00xgCD1mfR3Gdb/ihFSG8F2ca3a1s1U=;
	b=sm3haZl16dBx1qkx4cPZ1IoT024Is3Ass+zdnYFVUV+NKH1UuImwhX+JgPkBZ+0HIl
	HCNg5OnvpIrOO+xwuBA2MSkWHEdlFDS+v9eHQ6cR4P0dQ97dgs9gjuRG73H1ws/RyCiD
	23tvkqk++dCM5hQWtzVOZ0VowJi0pbxs14ZadAbKqH0IHN67WeikWKDeEuyz5BThU4Vc
	EtLk9QICePo0u+Yqr0A1+TXWdC/8Udfmeo/QNz8S0vfTD2fOq02RK0HzdZBKuB1Wvdmy
	OC8kZ712r0xBjs4sBqW/lKt8FC4Dsguri3joPdlT+vvjUAN7kCCWpeMntwS4850B+R6I
	qHmQ==
X-Received: by 10.50.164.165 with SMTP id yr5mr52815igb.38.1383692786401; Tue,
	05 Nov 2013 15:06:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.87.201 with HTTP; Tue, 5 Nov 2013 15:06:06 -0800 (PST)
From: Eric Keller <keller.eric@gmail.com>
Date: Wed, 6 Nov 2013 00:06:06 +0100
Message-ID: <CAF8s8J-NfHh=vhDk9937cJcxO8aBTFb3ZP+3J5=A2c+PG443QA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [patch] linux-yocto-rt_3.10.bbappend recipe
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
X-List-Received-Date: Tue, 05 Nov 2013 23:06:30 -0000
X-Groupsio-MsgNum: 9286
Content-Type: multipart/mixed; boundary=089e01229ed40407d604ea76156b

--089e01229ed40407d604ea76156b
Content-Type: multipart/alternative; boundary=089e01229ed40407d104ea761569

--089e01229ed40407d104ea761569
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

could you consider applying this patch so that we are able to build rt
kernel for genericx86(-64)?

Best regards
-- 
Eric Keller

--089e01229ed40407d104ea761569
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div>Hi everyone,<br><br>could you consider applying this patch so that we are able to build rt kernel for genericx86(-64)?<br><br></div>Best regards<br><div><div>-- <br clear="all"><div>Eric Keller<br><br></div>


</div></div></div>

--089e01229ed40407d104ea761569--

--089e01229ed40407d604ea76156b
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-add-linux-yocto-rt_3.10.bbappend-recipe-for-genericx.patch"
Content-Disposition: attachment; 
	filename="0001-add-linux-yocto-rt_3.10.bbappend-recipe-for-genericx.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hnnqi8ju0

RnJvbSA4ODcxNzhhNThhYjRkMGI1Y2VhNzNmNmJiYzFiNjhiMzI1Yzg3YTBkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFcmljIEtlbGxlciA8ZXJpYy5rZWxsZXIuZWsxQHJvY2hlLmNv
bT4KRGF0ZTogVHVlLCA1IE5vdiAyMDEzIDIzOjQ0OjA3ICswMTAwClN1YmplY3Q6IFtQQVRDSF0g
YWRkIGxpbnV4LXlvY3RvLXJ0XzMuMTAuYmJhcHBlbmQgcmVjaXBlIGZvciBnZW5lcmljeDg2IGFu
ZAogZ2VuZXJpY3g4Ni02NAoKU2lnbmVkLW9mZi1ieTogRXJpYyBLZWxsZXIgPGVyaWMua2VsbGVy
LmVrMUByb2NoZS5jb20+Ci0tLQogLi4uL2xpbnV4L2xpbnV4LXlvY3RvLXJ0XzMuMTAuYmJhcHBl
bmQgICAgICAgICAgICAgfCAgIDIzICsrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMjMgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEteW9jdG8tYnNwL3Jl
Y2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvLXJ0XzMuMTAuYmJhcHBlbmQKCmRpZmYgLS1n
aXQgYS9tZXRhLXlvY3RvLWJzcC9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0by1ydF8z
LjEwLmJiYXBwZW5kIGIvbWV0YS15b2N0by1ic3AvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgt
eW9jdG8tcnRfMy4xMC5iYmFwcGVuZApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAw
Li43OTc4Zjc5Ci0tLSAvZGV2L251bGwKKysrIGIvbWV0YS15b2N0by1ic3AvcmVjaXBlcy1rZXJu
ZWwvbGludXgvbGludXgteW9jdG8tcnRfMy4xMC5iYmFwcGVuZApAQCAtMCwwICsxLDIzIEBACitL
QlJBTkNIX2dlbmVyaWN4ODYgID0gInN0YW5kYXJkL2NvbW1vbi1wYy9iYXNlIgorS0JSQU5DSF9n
ZW5lcmljeDg2LTY0ICA9ICJzdGFuZGFyZC9jb21tb24tcGMtNjQvYmFzZSIKKyNLQlJBTkNIX3Jv
dXRlcnN0YXRpb25wcm8gPSAic3RhbmRhcmQvcm91dGVyc3RhdGlvbnBybyIKKyNLQlJBTkNIX21w
YzgzMTVlLXJkYiA9ICJzdGFuZGFyZC9mc2wtbXBjODMxNWUtcmRiIgorI0tCUkFOQ0hfYmVhZ2xl
Ym9hcmQgPSAic3RhbmRhcmQvYmVhZ2xlYm9hcmQiCisKK0tNQUNISU5FX2dlbmVyaWN4ODYgPz0g
ImNvbW1vbi1wYyIKK0tNQUNISU5FX2dlbmVyaWN4ODYtNjQgPz0gImNvbW1vbi1wYy02NCIKKwor
U1JDUkVWX21hY2hpbmVfZ2VuZXJpY3g4NiA/PSAiNzAyMDQwYWM3YzdlYzY2YTI5YjRkMTQ3NjY1
Y2NkZDBmZjAxNTU3NyIKK1NSQ1JFVl9tYWNoaW5lX2dlbmVyaWN4ODYtNjQgPz0gIjcwMjA0MGFj
N2M3ZWM2NmEyOWI0ZDE0NzY2NWNjZGQwZmYwMTU1NzciCisjU1JDUkVWX21hY2hpbmVfcm91dGVy
c3RhdGlvbnBybyA/PSAiZDRlNmFkZWZhZjkyYTFlN2I2NTM5ZDM3MWJhNDliNzhiZDE5NGE4NCIK
KyNTUkNSRVZfbWFjaGluZV9tcGM4MzE1ZS1yZGIgPz0gIjEyZGM0NmJhNGVmYjgwZTEzNWZlYzRk
Y2U5MTNlZWI4N2VlNjcxYjMiCisjU1JDUkVWX21hY2hpbmVfYmVhZ2xlYm9hcmQgPz0gIjcwMjA0
MGFjN2M3ZWM2NmEyOWI0ZDE0NzY2NWNjZGQwZmYwMTU1NzciCisKK0NPTVBBVElCTEVfTUFDSElO
RV9nZW5lcmljeDg2ID0gImdlbmVyaWN4ODYiCitDT01QQVRJQkxFX01BQ0hJTkVfZ2VuZXJpY3g4
Ni02NCA9ICJnZW5lcmljeDg2LTY0IgorI0NPTVBBVElCTEVfTUFDSElORV9tcGM4MzE1ZS1yZGIg
PSAibXBjODMxNWUtcmRiIgorI0NPTVBBVElCTEVfTUFDSElORV9yb3V0ZXJzdGF0aW9ucHJvID0g
InJvdXRlcnN0YXRpb25wcm8iCisjQ09NUEFUSUJMRV9NQUNISU5FX2JlYWdsZWJvYXJkID0gImJl
YWdsZWJvYXJkIgorCisjIHJvdXRlcnN0YXRpb25wcm8gaGFzIGEgZmxhc2ggc2l6ZSBvZiAxNm1i
CitLRVJORUxfSU1BR0VfTUFYU0laRV9yb3V0ZXJzdGF0aW9ucHJvID0gIjE2Nzc3MjE2IgotLSAK
MS43LjEwLjQKCg==

--089e01229ed40407d604ea76156b--
