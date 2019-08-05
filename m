Return-Path: <eduardoabinader@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AC93E00D46; Mon,  5 Aug 2019 05:06:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (eduardoabinader[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DFEAE00A93
	for <poky@yoctoproject.org>; Mon,  5 Aug 2019 05:05:58 -0700 (PDT)
Received: by mail-lf1-f68.google.com with SMTP id p197so57706628lfa.2
	for <poky@yoctoproject.org>; Mon, 05 Aug 2019 05:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3QxdlxuDt0LBgEIsLfyvPKtkSFBlWIxZhdLNaiZ6PfY=;
	b=pFIBJEdEkwtnrbvPUU8+rQs1Tsr+6cTVJuZAgF7ofSvZw95LmmPjIj+9P3gQZKDjZ7
	h7BwdbG1h09IgmTRccDsX5JnL1K5sQq4+Z7KrNAsJ5FRKnsIGRm8t7Y6gZZ5Fs6VcqlX
	GzsfldCdGQPgA78aEcinHsWXDJKpdNXb0Mf0NwLu0JMtOMLfLeNemw2+bWjXNa50uvtu
	n/Eb65x/+ZokcwH8QK0TOrSVGwe7tJSN6qGe4sdvuYogcJOR3Hu6N5NPSiVdIqng2EZ3
	KWRdW/jhq29oq/oNdN9w5iYIsxKo4ziRqn4rV54cQVZoUdYBEW0ADMokNESTz2p+IPot
	A9PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3QxdlxuDt0LBgEIsLfyvPKtkSFBlWIxZhdLNaiZ6PfY=;
	b=r7ZVCfAcWCJKyNBxtocL2xj4pLtoSEw0EASVSkoo5ZJBc5iRa/JqIEp6rh9d+9afx0
	5wxBHp1Jfol2SfvKFvhoA9uZ/t0G+ON+zN8DtMM3L0xc5/zqie3wcux0Hqt8Zwxhs0Av
	US/XLme0rmOAFf9p0Abj3VcWaX9RsHNxwmUeAcm1FpBd3Z/7ONN0TYfk9b/F1kZS9uvH
	ceLaD9QqzCxt3S75G6josqf8hR7M6uGYMAqkWdt8I0vekyZ/DFmhGdTDj0ewUroqCFkI
	LQlPgweusXgtmaS3PbWE49zFZ6m7Wzhs9aMDoMljShSUlcKbkVshi7p/Z402G3TL+gqM
	M8gw==
X-Gm-Message-State: APjAAAUJeUh8cqlXJBWRLgmOLSQbOKnw1o3O9L2MLhKXRyf8VvOLG/Ns
	JVPv/MabGF2K6oleb5BDhJCsfHVM/n4PTJspmZ0=
X-Google-Smtp-Source: APXvYqxVV0iYaGzLdJeYZNAtvC7CAf/AV8OjdhYcpCFD76xwHuc/rW618pNi0MQW+n14rZWMCLrAlpO8lqoLB7uSt6Q=
X-Received: by 2002:a19:7709:: with SMTP id s9mr67106854lfc.86.1565006758005; 
	Mon, 05 Aug 2019 05:05:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190805051628.6341-1-eduardo.abinader@gmail.com>
	<CANNYZj-wCxeKi6O3ciZVB=WFULjk=38V0Rdj9aH3WDGsu1opfA@mail.gmail.com>
In-Reply-To: <CANNYZj-wCxeKi6O3ciZVB=WFULjk=38V0Rdj9aH3WDGsu1opfA@mail.gmail.com>
From: Eduardo Abinader <eduardoabinader@gmail.com>
Date: Mon, 5 Aug 2019 14:05:45 +0200
Message-ID: <CAGoNHngf_HbGJF22SL7r6vcWSCfLU+D5p_oVaE8evjZiHLJOrw@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] devtool: add ssh key option do deploy-target
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
X-List-Received-Date: Mon, 05 Aug 2019 12:06:00 -0000
Content-Type: multipart/alternative; boundary="000000000000e1d755058f5d8778"

--000000000000e1d755058f5d8778
Content-Type: text/plain; charset="UTF-8"

Gonna do it.

Thanks, Alex

On Mon, 5 Aug 2019 at 13:03, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> This should go to the openembedded-core mailing list.
>
> Alex
>
> On Mon, 5 Aug 2019 at 07:16, Eduardo Abinader <eduardoabinader@gmail.com>
> wrote:
>
>> Signed-off-by: Eduardo Abinader <eduardo.abinader@gmail.com>
>> ---
>>  scripts/lib/devtool/deploy.py | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/scripts/lib/devtool/deploy.py b/scripts/lib/devtool/deploy.py
>> index d1ce2309f9..6a997735fc 100644
>> --- a/scripts/lib/devtool/deploy.py
>> +++ b/scripts/lib/devtool/deploy.py
>> @@ -212,6 +212,9 @@ def deploy(args, config, basepath, workspace):
>>              scp_port = "-P %s" % args.port
>>              ssh_port = "-p %s" % args.port
>>
>> +        if args.key:
>> +            extraoptions += ' -i %s' % args.key
>> +
>>          # In order to delete previously deployed files and have the
>> manifest file on
>>          # the target, we write out a shell script and then copy it to
>> the target
>>          # so we can then run it (piping tar output to it).
>> @@ -326,6 +329,8 @@ def register_commands(subparsers, context):
>>      parser_deploy.add_argument('--no-check-space', help='Do not check
>> for available space before deploying', action='store_true')
>>      parser_deploy.add_argument('-e', '--ssh-exec', help='Executable to
>> use in place of ssh')
>>      parser_deploy.add_argument('-P', '--port', help='Specify port to use
>> for connection to the target')
>> +    parser_deploy.add_argument('-I', '--key',
>> +                               help='Specifiy ssh private key for
>> connection to the target')
>>
>>      strip_opts =
>> parser_deploy.add_mutually_exclusive_group(required=False)
>>      strip_opts.add_argument('-S', '--strip',
>> @@ -349,4 +354,7 @@ def register_commands(subparsers, context):
>>      parser_undeploy.add_argument('-n', '--dry-run', help='List files to
>> be undeployed only', action='store_true')
>>      parser_undeploy.add_argument('-e', '--ssh-exec', help='Executable to
>> use in place of ssh')
>>      parser_undeploy.add_argument('-P', '--port', help='Specify port to
>> use for connection to the target')
>> +    parser_undeploy.add_argument('-I', '--key',
>> +                               help='Specifiy ssh private key for
>> connection to the target')
>> +
>>      parser_undeploy.set_defaults(func=undeploy)
>> --
>> 2.20.1
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>

--000000000000e1d755058f5d8778
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Gonna do it.</div><div><br></div><div>Thanks, Alex</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, 5 Aug 2019 at 13:03, Alexander Kanavin &lt;<a href=3D"mailto:ale=
x.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>This shoul=
d go to the openembedded-core mailing list.</div><div><br></div><div>Alex<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, 5 Aug 2019 at 07:16, Eduardo Abinader &lt;<a href=3D"mailto=
:eduardoabinader@gmail.com" target=3D"_blank">eduardoabinader@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Sign=
ed-off-by: Eduardo Abinader &lt;<a href=3D"mailto:eduardo.abinader@gmail.co=
m" target=3D"_blank">eduardo.abinader@gmail.com</a>&gt;<br>
---<br>
=C2=A0scripts/lib/devtool/deploy.py | 8 ++++++++<br>
=C2=A01 file changed, 8 insertions(+)<br>
<br>
diff --git a/scripts/lib/devtool/deploy.py b/scripts/lib/devtool/deploy.py<=
br>
index d1ce2309f9..6a997735fc 100644<br>
--- a/scripts/lib/devtool/deploy.py<br>
+++ b/scripts/lib/devtool/deploy.py<br>
@@ -212,6 +212,9 @@ def deploy(args, config, basepath, workspace):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0scp_port =3D &quot;-P %s&qu=
ot; % args.port<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ssh_port =3D &quot;-p %s&qu=
ot; % args.port<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if args.key:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 extraoptions +=3D &#39; -i %s&#3=
9; % args.key<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# In order to delete previously deployed =
files and have the manifest file on<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# the target, we write out a shell script=
 and then copy it to the target<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# so we can then run it (piping tar outpu=
t to it).<br>
@@ -326,6 +329,8 @@ def register_commands(subparsers, context):<br>
=C2=A0 =C2=A0 =C2=A0parser_deploy.add_argument(&#39;--no-check-space&#39;, =
help=3D&#39;Do not check for available space before deploying&#39;, action=
=3D&#39;store_true&#39;)<br>
=C2=A0 =C2=A0 =C2=A0parser_deploy.add_argument(&#39;-e&#39;, &#39;--ssh-exe=
c&#39;, help=3D&#39;Executable to use in place of ssh&#39;)<br>
=C2=A0 =C2=A0 =C2=A0parser_deploy.add_argument(&#39;-P&#39;, &#39;--port&#3=
9;, help=3D&#39;Specify port to use for connection to the target&#39;)<br>
+=C2=A0 =C2=A0 parser_deploy.add_argument(&#39;-I&#39;, &#39;--key&#39;,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help=3D&#39;Specifiy ssh private key =
for connection to the target&#39;)<br>
<br>
=C2=A0 =C2=A0 =C2=A0strip_opts =3D parser_deploy.add_mutually_exclusive_gro=
up(required=3DFalse)<br>
=C2=A0 =C2=A0 =C2=A0strip_opts.add_argument(&#39;-S&#39;, &#39;--strip&#39;=
,<br>
@@ -349,4 +354,7 @@ def register_commands(subparsers, context):<br>
=C2=A0 =C2=A0 =C2=A0parser_undeploy.add_argument(&#39;-n&#39;, &#39;--dry-r=
un&#39;, help=3D&#39;List files to be undeployed only&#39;, action=3D&#39;s=
tore_true&#39;)<br>
=C2=A0 =C2=A0 =C2=A0parser_undeploy.add_argument(&#39;-e&#39;, &#39;--ssh-e=
xec&#39;, help=3D&#39;Executable to use in place of ssh&#39;)<br>
=C2=A0 =C2=A0 =C2=A0parser_undeploy.add_argument(&#39;-P&#39;, &#39;--port&=
#39;, help=3D&#39;Specify port to use for connection to the target&#39;)<br=
>
+=C2=A0 =C2=A0 parser_undeploy.add_argument(&#39;-I&#39;, &#39;--key&#39;,<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help=3D&#39;Specifiy ssh private key =
for connection to the target&#39;)<br>
+<br>
=C2=A0 =C2=A0 =C2=A0parser_undeploy.set_defaults(func=3Dundeploy)<br>
-- <br>
2.20.1<br>
<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e1d755058f5d8778--
