.class public final Lmobi/androidcloud/lib/im/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private hk:Ljava/lang/String;

.field private hl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 26
    iget-object v1, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 27
    :cond_f
    sget-object v1, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    iget-object v3, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    sget-object v4, Lcom/talkray/arcvoice/ArcError;->INVALID_URL:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V

    .line 88
    :goto_1a
    return-void

    .line 32
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_4a

    move v2, v3

    move v1, v3

    .line 42
    :goto_24
    if-ge v2, v5, :cond_3e

    .line 44
    :try_start_26
    iget-object v1, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    iget-object v4, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    invoke-static {v1, v4}, Lmobi/androidcloud/lib/aws/b;->e(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2d} :catch_57
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_71

    move-result v1

    .line 55
    :goto_2e
    if-eqz v1, :cond_74

    .line 56
    :try_start_30
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/androidcloud/lib/net/a;->iZ()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_64

    .line 69
    :cond_3e
    if-eqz v1, :cond_81

    .line 86
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/talkray/arcvoice/client/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 33
    :catch_4a
    move-exception v0

    .line 34
    sget-object v1, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    iget-object v3, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    sget-object v4, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V

    goto :goto_1a

    .line 45
    :catch_57
    move-exception v0

    .line 47
    :try_start_58
    sget-object v1, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    iget-object v3, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    sget-object v4, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_63} :catch_64

    goto :goto_1a

    .line 84
    :catch_64
    move-exception v0

    .line 81
    sget-object v1, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    iget-object v3, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    sget-object v4, Lcom/talkray/arcvoice/ArcError;->DOWNLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V

    goto :goto_1a

    .line 50
    :catch_71
    move-exception v0

    move v1, v3

    .line 52
    goto :goto_2e

    .line 61
    :cond_74
    const/4 v4, 0x1

    .line 62
    if-lt v2, v5, :cond_79

    .line 63
    const/16 v4, 0x1e

    .line 65
    :cond_79
    mul-int/lit16 v4, v4, 0x3e8

    :try_start_7b
    invoke-static {v4}, Lcom/google/protobuf/d;->i(I)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 74
    :cond_81
    sget-object v1, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/d;->hk:Ljava/lang/String;

    iget-object v3, p0, Lmobi/androidcloud/lib/im/d;->hl:Ljava/lang/String;

    sget-object v4, Lcom/talkray/arcvoice/ArcError;->DOWNLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;Ljava/lang/Exception;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8c} :catch_64

    goto :goto_1a
.end method
