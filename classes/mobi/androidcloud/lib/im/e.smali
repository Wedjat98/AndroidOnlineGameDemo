.class public final Lmobi/androidcloud/lib/im/e;
.super Lmobi/androidcloud/lib/im/h;
.source "SourceFile"


# instance fields
.field private fw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 19
    new-instance v0, Lmobi/androidcloud/lib/im/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/im/j;-><init>(Lmobi/androidcloud/lib/im/f;)V

    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/im/h;-><init>(Lmobi/androidcloud/lib/im/j;)V

    .line 20
    iput-object p1, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 25
    iget-object v0, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 29
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v0, v1, v2}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    .line 67
    :goto_c
    return-void

    .line 33
    :cond_d
    :try_start_d
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lmobi/androidcloud/lib/im/b;->a(Ljava/io/File;)I

    move-result v0

    .line 37
    const/16 v1, 0x1e

    if-le v0, v1, :cond_31

    .line 38
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->AUDIO_MESSAGE_TOO_LARGE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v0, v1, v2}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_26

    goto :goto_c

    .line 43
    :catch_26
    move-exception v0

    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v0, v1, v2}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    goto :goto_c

    .line 49
    :cond_31
    iget-object v0, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmobi/androidcloud/lib/im/e;->a(Ljava/lang/String;Z)Lmobi/androidcloud/lib/wire/control/L$a;

    move-result-object v0

    .line 51
    if-nez v0, :cond_44

    .line 52
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->UPLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v0, v1, v2}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    goto :goto_c

    .line 56
    :cond_44
    iget-object v0, v0, Lmobi/androidcloud/lib/wire/control/L$a;->kZ:Ljava/lang/String;

    .line 58
    if-nez v0, :cond_52

    .line 62
    sget-object v0, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v1, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->UPLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v0, v1, v2}, Lcom/talkray/arcvoice/client/a;->a(Ljava/lang/String;Lcom/talkray/arcvoice/ArcError;)V

    goto :goto_c

    .line 66
    :cond_52
    sget-object v1, Lcom/talkray/arcvoice/client/a;->fD:Lcom/talkray/arcvoice/client/a;

    iget-object v2, p0, Lmobi/androidcloud/lib/im/e;->fw:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/talkray/arcvoice/client/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method
