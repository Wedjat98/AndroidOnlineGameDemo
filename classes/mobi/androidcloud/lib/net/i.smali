.class public final Lmobi/androidcloud/lib/net/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/lib/net/i$1;
    }
.end annotation


# static fields
.field private static final iq:Lmobi/androidcloud/lib/net/d;

.field private static ir:Ljava/lang/String;

.field private static is:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 40
    new-instance v0, Lmobi/androidcloud/lib/net/d;

    const/16 v1, 0x3e8

    const/16 v2, 0xfa0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-direct {v0, v1, v2, v4, v5}, Lmobi/androidcloud/lib/net/d;-><init>(IID)V

    sput-object v0, Lmobi/androidcloud/lib/net/i;->iq:Lmobi/androidcloud/lib/net/d;

    .line 44
    return-void
.end method

.method private static a(Lcom/talkray/arcvoice/ArcRegion;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 245
    sget-object v0, Lmobi/androidcloud/lib/net/i$1;->it:[I

    invoke-virtual {p0}, Lcom/talkray/arcvoice/ArcRegion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 251
    const-string v0, "sdk-748741207.us-east-1.elb.amazonaws.com"

    :goto_d
    return-object v0

    .line 247
    :pswitch_e
    const-string v0, "sdk-748741207.us-east-1.elb.amazonaws.com"

    goto :goto_d

    .line 249
    :pswitch_11
    const-string v0, "sdk-1232743125.cn-north-1.elb.amazonaws.com.cn:8800"

    goto :goto_d

    .line 245
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Lmobi/androidcloud/lib/net/d;)V
    .registers 1

    .prologue
    .line 215
    invoke-static {p0}, Lmobi/androidcloud/lib/net/i;->b(Lmobi/androidcloud/lib/net/d;)V

    .line 218
    invoke-static {}, Lmobi/androidcloud/lib/net/i;->jj()V

    .line 219
    return-void
.end method

.method private static b(Lmobi/androidcloud/lib/net/d;)V
    .registers 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lmobi/androidcloud/lib/net/d;->ja()I

    move-result v0

    .line 223
    invoke-static {v0}, Lcom/google/protobuf/d;->i(I)V

    .line 225
    return-void
.end method

.method public static je()V
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lmobi/androidcloud/lib/net/i;->iq:Lmobi/androidcloud/lib/net/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/d;->reset()V

    .line 48
    return-void
.end method

.method public static jf()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 2

    .prologue
    const/16 v1, 0x2710

    .line 52
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 53
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private static jg()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hN()Lcom/talkray/arcvoice/ArcRegion;

    move-result-object v0

    invoke-static {v0}, Lmobi/androidcloud/lib/net/i;->a(Lcom/talkray/arcvoice/ArcRegion;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tikl/v1.0?clientVersion=1.13"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jh()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    .line 73
    invoke-static {}, Lmobi/androidcloud/lib/net/i;->je()V

    .line 74
    :goto_4
    const-string v0, "uninitalized"

    sput-object v0, Lmobi/androidcloud/lib/net/i;->ir:Ljava/lang/String;

    .line 78
    sput v3, Lmobi/androidcloud/lib/net/i;->is:I

    .line 80
    invoke-static {}, Lmobi/androidcloud/lib/net/i;->ji()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 81
    :try_start_10
    invoke-static {}, Lmobi/androidcloud/lib/net/i;->jg()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v0, "Connection"

    const-string v2, "close"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "User-Agent"

    const-string v2, "TiklAndroidClient"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lmobi/androidcloud/lib/net/i;->jf()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 91
    new-instance v2, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 92
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    if-nez v0, :cond_4b

    .line 96
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/session/d;->s(Z)V

    .line 98
    sget-object v0, Lmobi/androidcloud/lib/net/i;->iq:Lmobi/androidcloud/lib/net/d;

    invoke-static {v0}, Lmobi/androidcloud/lib/net/i;->a(Lmobi/androidcloud/lib/net/d;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_43} :catch_44

    goto :goto_4

    .line 159
    :catch_44
    move-exception v0

    sget-object v0, Lmobi/androidcloud/lib/net/i;->iq:Lmobi/androidcloud/lib/net/d;

    invoke-static {v0}, Lmobi/androidcloud/lib/net/i;->a(Lmobi/androidcloud/lib/net/d;)V

    goto :goto_4

    .line 102
    :cond_4b
    :try_start_4b
    invoke-static {v0}, Lcom/google/protobuf/d;->g(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 105
    const-string v0, "success"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 107
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmobi/androidcloud/lib/session/d;->s(Z)V

    .line 108
    const-string v0, "reason"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "host"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    if-eqz v0, :cond_78

    .line 131
    sput-object v0, Lmobi/androidcloud/lib/net/i;->ir:Ljava/lang/String;

    .line 134
    :cond_78
    const-string v0, "port"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_80} :catch_44

    .line 136
    if-eqz v0, :cond_88

    .line 138
    :try_start_82
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lmobi/androidcloud/lib/net/i;->is:I
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_88} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_88} :catch_44

    .line 140
    :cond_88
    :goto_88
    :try_start_88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server discovery result: host="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmobi/androidcloud/lib/net/i;->ir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/androidcloud/lib/net/i;->is:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    sget-object v0, Lmobi/androidcloud/lib/net/i;->ir:Ljava/lang/String;

    const-string v1, "uninitalized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    sget v0, Lmobi/androidcloud/lib/net/i;->is:I

    if-ne v0, v3, :cond_e5

    .line 149
    :cond_ae
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/session/d;->s(Z)V

    .line 151
    sget-object v0, Lmobi/androidcloud/lib/net/i;->iq:Lmobi/androidcloud/lib/net/d;

    invoke-static {v0}, Lmobi/androidcloud/lib/net/i;->a(Lmobi/androidcloud/lib/net/d;)V

    goto/16 :goto_4

    .line 111
    :cond_bb
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmobi/androidcloud/lib/session/d;->s(Z)V

    .line 112
    const-string v0, "reason"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "false"

    const-string v0, "success"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 119
    const v0, 0x927c0

    invoke-static {v0}, Lcom/google/protobuf/d;->i(I)V

    goto/16 :goto_4

    .line 122
    :cond_de
    sget-object v0, Lmobi/androidcloud/lib/net/i;->iq:Lmobi/androidcloud/lib/net/d;

    invoke-static {v0}, Lmobi/androidcloud/lib/net/i;->a(Lmobi/androidcloud/lib/net/d;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_e3} :catch_44

    goto/16 :goto_4

    .line 163
    :cond_e5
    return-void

    :catch_e6
    move-exception v0

    goto :goto_88
.end method

.method private static ji()Z
    .registers 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method private static jj()V
    .registers 1

    .prologue
    .line 228
    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/google/protobuf/d;->j(I)Z

    .line 231
    return-void
.end method

.method public static jk()Ljava/lang/String;
    .registers 1

    .prologue
    .line 234
    sget-object v0, Lmobi/androidcloud/lib/net/i;->ir:Ljava/lang/String;

    return-object v0
.end method

.method public static jl()I
    .registers 1

    .prologue
    .line 238
    sget v0, Lmobi/androidcloud/lib/net/i;->is:I

    return v0
.end method
