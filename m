Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFDF4E00D35; Mon, 14 Oct 2019 01:10:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6A73E007C2
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 01:10:49 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id z19so36154751ior.0
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 01:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=+0Hzdwu5+PogUkWKk7imAISFl9iXchOymaZtN4fFCko=;
	b=D6JzEwhd3wERlOemNjhTIXO1Ob/cygOI65Tf/FW8jFYLJxzoMGgNDJJzMktc1lp63T
	ohPiXTXvlsUbDVMw2gjdjLAvZ9JVuQPUdBIejKI7fwJMTQb1zrZ5YBq7Bp9kI8/nOkRk
	+RyqhneDO0XBwk0xtL9n33JvMGrWBVtc5vyH0tDFo1IYQi6xRSY65Nua9xBHIhfoEY2W
	NdszPSALXMu7SCcGBkR6T4HZczeVI/FXgSoHQQxJqERmjEk1F86vT1h1nb8mPJeZAbRU
	SbNGa0RhOpKSbIrLaZeH+8W3gXeQPv/vo2xxiv3XdiVp3pj2+9DHaBt+3vwZ8iOnzEer
	kOYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=+0Hzdwu5+PogUkWKk7imAISFl9iXchOymaZtN4fFCko=;
	b=KZ9lXDWhauP7XUPPUxjPN/5deGe1lcmVRf29uRQEYK301d6Urpit6SiRvMsU6dAuyN
	/KobiuhwEwDQlIRGoOCGQn958e/8jPpA7AzaaXRcD6ptKIAk0pt8s8jY876pQtrbFdxd
	cwaMoxlVnUkFhbaZtavRwMrcgmmP0evS4xwStKoatN/mBN+UdJCPePF+L9qU9m61Lb0c
	hEfKYPzrulbZw4P0/6bnvymjsNGdSs2X5ULumDwiNo4R1vIpG58vogKpjA9g+JQ3Lio3
	/QC9NnJX4kI1LOIM2XjSR+bGNmWShtRnXGbWAfXNhGC/htJ/5T6egXJGMl0JAbbIvAdm
	OyaQ==
X-Gm-Message-State: APjAAAX7W1KZteT8gpvbnop0/hAr9yptRxy9Lwb/lvwzOAatxX6ikEKi
	9FlcB5zX7zhbKPipTCeITigWOeswcexX2likIoPi3sbX
X-Google-Smtp-Source: APXvYqw3dQEar4TNlhHDDAN1EhUxfXw7z1qjmUT3vGUJ4EOWRjVChg0a306c2ofMWr8dGKKQ69Qd1HZ4cFfiajdC3pM=
X-Received: by 2002:a5d:9c4b:: with SMTP id 11mr24287709iof.120.1571040649063; 
	Mon, 14 Oct 2019 01:10:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAW_-NRUPdVk-1Fb4v3PQpA3h0um-CwvjD2pkskQfd4G+w@mail.gmail.com>
	<CAOe0dAUCXc0zF---SitaCZkVr3i=mc6YZUWuT8tL0UdYopKy-A@mail.gmail.com>
	<CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
In-Reply-To: <CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Mon, 14 Oct 2019 13:40:37 +0530
Message-ID: <CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Poky build failure with "Could not invoke dnf" error message.
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
X-List-Received-Date: Mon, 14 Oct 2019 08:10:52 -0000
X-Groupsio-MsgNum: 11785
Content-Type: multipart/mixed; boundary="000000000000d0c82b0594da6753"

--000000000000d0c82b0594da6753
Content-Type: multipart/alternative; boundary="000000000000d0c8280594da6751"

--000000000000d0c8280594da6751
Content-Type: text/plain; charset="UTF-8"

Hi All ,

I am trying to build an image with my custom layer and getting error of
*"ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf.". *

( i have added an basic ethernet up/down systemd service in my layer)
The details of service file & log are attached in  (poky-error.txt)

Thanks ,
Ashish

--000000000000d0c8280594da6751
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"=
gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><=
div>Hi All , <br></div><div><br></div><div>I am trying to build an image wi=
th my custom layer and getting error of <br></div><div><b>&quot;ERROR: core=
-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf.&quot;. </b><br></div=
><div></div><div><br></div><div>( i have added an basic ethernet up/down sy=
stemd service in my layer)<br></div><div>The details of service file &amp; =
log are attached in=C2=A0  (poky-error.txt)</div><div><br></div><div>Thanks=
 ,</div><div>Ashish <br></div><div><br></div></div>
</div></div>
</div></div>
</div></div>

--000000000000d0c8280594da6751--

--000000000000d0c82b0594da6753
Content-Type: text/plain; charset="US-ASCII"; name="poky-error.txt"
Content-Disposition: attachment; filename="poky-error.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_k1q50dwr0>
X-Attachment-Id: f_k1q50dwr0

RVJST1I6IGNvcmUtaW1hZ2UtbWluaW1hbC0xLjAtcjAgZG9fcm9vdGZzOiBDb3VsZCBub3QgaW52
b2tlIGRuZi4gQ29tbWFuZCAnL2hvbWUvYXNoaXNoL0RvY3VtZW50cy9saW51eC1mb3VuZGF0aW9u
LXByb2plY3RzL3lvY3RvL2J1aWxkLWFybW91ci90bXAvd29yay9xZW11eDg2LXBva3ktbGludXgv
Y29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9k
bmYgLXYgLS1ycG12ZXJib3NpdHk9aW5mbyAteSAtYyAvaG9tZS9hc2hpc2gvRG9jdW1lbnRzL2xp
bnV4LWZvdW5kYXRpb24tcHJvamVjdHMveW9jdG8vYnVpbGQtYXJtb3VyL3RtcC93b3JrL3FlbXV4
ODYtcG9reS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3Jvb3Rmcy9ldGMvZG5mL2Ru
Zi5jb25mIC0tc2V0b3B0PXJlcG9zZGlyPS9ob21lL2FzaGlzaC9Eb2N1bWVudHMvbGludXgtZm91
bmRhdGlvbi1wcm9qZWN0cy95b2N0by9idWlsZC1hcm1vdXIvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5
LWxpbnV4L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvcm9vdGZzL2V0Yy95dW0ucmVwb3MuZCAt
LWluc3RhbGxyb290PS9ob21lL2FzaGlzaC9Eb2N1bWVudHMvbGludXgtZm91bmRhdGlvbi1wcm9q
ZWN0cy95b2N0by9idWlsZC1hcm1vdXIvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUt
aW1hZ2UtbWluaW1hbC8xLjAtcjAvcm9vdGZzIC0tc2V0b3B0PWxvZ2Rpcj0vaG9tZS9hc2hpc2gv
RG9jdW1lbnRzL2xpbnV4LWZvdW5kYXRpb24tcHJvamVjdHMveW9jdG8vYnVpbGQtYXJtb3VyL3Rt
cC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3RlbXAg
LS1yZXBvZnJvbXBhdGg9b2UtcmVwbywvaG9tZS9hc2hpc2gvRG9jdW1lbnRzL2xpbnV4LWZvdW5k
YXRpb24tcHJvamVjdHMveW9jdG8vYnVpbGQtYXJtb3VyL3RtcC93b3JrL3FlbXV4ODYtcG9reS1s
aW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL29lLXJvb3Rmcy1yZXBvIC0tbm9ncGdjaGVj
ayBpbnN0YWxsIGJjIHBhY2thZ2Vncm91cC1jb3JlLWJvb3QgZXRoMCBydW4tcG9zdGluc3RzJyBy
ZXR1cm5lZCAxOgpETkYgdmVyc2lvbjogNC4yLjIKY2FjaGVkaXI6IC9ob21lL2FzaGlzaC9Eb2N1
bWVudHMvbGludXgtZm91bmRhdGlvbi1wcm9qZWN0cy95b2N0by9idWlsZC1hcm1vdXIvdG1wL3dv
cmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvcm9vdGZzL3Zh
ci9jYWNoZS9kbmYKQWRkZWQgb2UtcmVwbyByZXBvIGZyb20gL2hvbWUvYXNoaXNoL0RvY3VtZW50
cy9saW51eC1mb3VuZGF0aW9uLXByb2plY3RzL3lvY3RvL2J1aWxkLWFybW91ci90bXAvd29yay9x
ZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC9vZS1yb290ZnMtcmVw
bwpyZXBvOiB1c2luZyBjYWNoZSBmb3I6IG9lLXJlcG8Kbm90IGZvdW5kIG90aGVyIGZvcjogCm5v
dCBmb3VuZCBtb2R1bGVzIGZvcjogCm5vdCBmb3VuZCBkZWx0YWluZm8gZm9yOiAKbm90IGZvdW5k
IHVwZGF0ZWluZm8gZm9yOiAKb2UtcmVwbzogdXNpbmcgbWV0YWRhdGEgZnJvbSBNb24gMTQgT2N0
IDIwMTkgMDU6MDM6NTUgQU0gVVRDLgpObyBtb2R1bGUgZGVmYXVsdHMgZm91bmQKTm8gbWF0Y2gg
Zm9yIGFyZ3VtZW50OiBldGgwCkVycm9yOiBVbmFibGUgdG8gZmluZCBhIG1hdGNoCgpFUlJPUjog
Y29yZS1pbWFnZS1taW5pbWFsLTEuMC1yMCBkb19yb290ZnM6IApFUlJPUjogY29yZS1pbWFnZS1t
aW5pbWFsLTEuMC1yMCBkb19yb290ZnM6IEZ1bmN0aW9uIGZhaWxlZDogZG9fcm9vdGZzCkVSUk9S
OiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9tZS9hc2hpc2gvRG9jdW1lbnRzL2xp
bnV4LWZvdW5kYXRpb24tcHJvamVjdHMveW9jdG8vYnVpbGQtYXJtb3VyL3RtcC93b3JrL3FlbXV4
ODYtcG9reS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3Rm
cy4xNDU1NQpFUlJPUjogVGFzayAoL2hvbWUvYXNoaXNoL0RvY3VtZW50cy9saW51eC1mb3VuZGF0
aW9uLXByb2plY3RzL3lvY3RvL21ldGEtbWluaW1hbC9yZWNpcGVzLWFybW91ci9pbWFnZXMvY29y
ZS1pbWFnZS1taW5pbWFsLmJiOmRvX3Jvb3RmcykgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJwpO
T1RFOiBUYXNrcyBTdW1tYXJ5OiBBdHRlbXB0ZWQgMjY2MSB0YXNrcyBvZiB3aGljaCAyNjYwIGRp
ZG4ndCBuZWVkIHRvIGJlIHJlcnVuIGFuZCAxIGZhaWxlZC4KClN1bW1hcnk6IDEgdGFzayBmYWls
ZWQ6CiAgL2hvbWUvYXNoaXNoL0RvY3VtZW50cy9saW51eC1mb3VuZGF0aW9uLXByb2plY3RzL3lv
Y3RvL21ldGEtbWluaW1hbC9yZWNpcGVzLWFybW91ci9pbWFnZXMvY29yZS1pbWFnZS1taW5pbWFs
LmJiOmRvX3Jvb3RmcwpTdW1tYXJ5OiBUaGVyZSB3ZXJlIDMgRVJST1IgbWVzc2FnZXMgc2hvd24s
IHJldHVybmluZyBhIG5vbi16ZXJvIGV4aXQgY29kZS4KWzEwOjMzOjU3XTp+L0RvY3VtZW50cy9s
aW51eC1mb3VuZGF0aW9uLXByb2plY3RzL3lvY3RvL2J1aWxkLWFybW91ciA6IAoKLy8gPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpbMTM6MzY6MjZdOn4vRG9jdW1lbnRzL2xpbnV4
LWZvdW5kYXRpb24tcHJvamVjdHMveW9jdG8vbWV0YS1tZWNoYW5pYy9yZWNpcGVzLWFybW91ci9l
dGgwIChtYXN0ZXIpIDogY2F0IGV0aDBfMC4xLmJiIAojIENvcHlyaWdodCAoQykgMjAxOSBBc2hp
c2ggPGFzaGlzaG1AbXZpc3RhLmNvbT4KIyBSZWxlYXNlZCB1bmRlciB0aGUgTUlUIGxpY2Vuc2Ug
KHNlZSBDT1BZSU5HLk1JVCBmb3IgdGhlIHRlcm1zKQoKU1VNTUFSWSA9ICJJbnN0YWxsIGFuZCBz
dGFydCBhIHN5c3RlbWQgc2VydmljZSIKU0VDVElPTiA9ICJldGgwIgpMSUNFTlNFID0gIk1JVCIK
CmluaGVyaXQgc3lzdGVtZAoKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vJHtDT01NT05fTElD
RU5TRV9ESVJ9L01JVDttZDU9MDgzNWFkZTY5OGUwYmNmODUwNmVjZGEyZjdiNGYzMDIiCgpTUkNf
VVJJICs9ICJmaWxlOi8vZXRoMC5zZXJ2aWNlIgoKUyA9ICIke1dPUktESVJ9IgoKI0ZJTEVTRVhU
UkFQQVRIU19wcmVwZW5kIDo9ICIke1RISVNESVJ9LyR7UE59OiIKU1lTVEVNRF9TRVJWSUNFXyR7
UE59ID0gImV0aDAuc2VydmljZSIKCmRvX2luc3RhbGwoKSB7CiAgICBpbnN0YWxsIC1kICR7RH0k
e3N5c3RlbWRfc3lzdGVtX3VuaXRkaXJ9L3N5c3RlbQogICAgaW5zdGFsbCAtbSAwNjQ0ICR7V09S
S0RJUn0vZXRoMC5zZXJ2aWNlICR7RH0ke3N5c3RlbWRfc3lzdGVtX3VuaXRkaXJ9L3N5c3RlbQp9
CgojRklMRVNfJHtQTn0gKz0gIi9saWIvc3lzdGVtZC9zeXN0ZW0iCkZJTEVTXyR7UE59ICs9ICIk
e3N5c3RlbWRfc3lzdGVtX3VuaXRkaXJ9IgpSRVFVSVJFRF9ESVNUUk9fRkVBVFVSRVM9ICJzeXN0
ZW1kIgoKCi8vID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQoKWzEzOjM2OjI5XTp+
L0RvY3VtZW50cy9saW51eC1mb3VuZGF0aW9uLXByb2plY3RzL3lvY3RvL21ldGEtbWVjaGFuaWMv
cmVjaXBlcy1hcm1vdXIvZXRoMCAobWFzdGVyKSA6IGNhdCBldGgwLTAuMS9ldGgwLnNlcnZpY2Ug
CltVbml0XQpEZXNjcmlwdGlvbj1OZXR3b3JrIGludGVyZmFjZXMKV2FudHM9bmV0d29yay50YXJn
ZXQKQmVmb3JlPW5ldHdvcmsudGFyZ2V0CkJpbmRzVG89c3lzLXN1YnN5c3RlbS1uZXQtZGV2aWNl
cy1ldGgwLmRldmljZQpBZnRlcj1zeXMuc3Vic3lzdGVtLW5ldC1kZXZpY2VzLWV0aDAuZGV2aWNl
CgpbU2VydmljZV0KVHlwZT1vbmVzaG90ClJlbWFpbkFmdGVyRXhpdD15ZXMKRXhlY1N0YXJ0PS9i
aW4vc2ggLWMgImlmdXAgZXRoMCIKRXhlY1N0b3A9L2Jpbi9zaCAtYyAiaWZkb3duIGV0aDAiCgpb
SW5zdGFsbF0KV2FudGVkQnk9bXVsdGktdXNlci50YXJnZXQKWzEzOjM2OjQ4XTp+L0RvY3VtZW50
cy9saW51eC1mb3VuZGF0aW9uLXByb2plY3RzL3lvY3RvL21ldGEtbWVjaGFuaWMvcmVjaXBlcy1h
cm1vdXIvZXRoMCAobWFzdGVyKSA6IAoKLy8gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09CgoK

--000000000000d0c82b0594da6753--
