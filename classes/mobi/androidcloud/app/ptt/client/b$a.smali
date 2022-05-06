.class final Lmobi/androidcloud/app/ptt/client/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/app/ptt/client/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private fZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmobi/androidcloud/app/ptt/client/b;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 96
    iput-object p2, p0, Lmobi/androidcloud/app/ptt/client/b$a;->fZ:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 108
    :try_start_1
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v0

    iget-wide v0, v0, Lmobi/androidcloud/lib/net/a;->hV:J

    .line 110
    new-instance v3, Lmobi/androidcloud/lib/session/c;

    invoke-direct {v3}, Lmobi/androidcloud/lib/session/c;-><init>()V

    .line 111
    iget-object v0, p0, Lmobi/androidcloud/app/ptt/client/b$a;->fZ:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 114
    iget-object v0, p0, Lmobi/androidcloud/app/ptt/client/b$a;->fZ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lmobi/androidcloud/lib/session/c;->Q(Ljava/lang/String;)I

    move-result v0

    .line 118
    sget-object v1, Lmobi/androidcloud/app/ptt/client/b$1;->fY:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_88

    packed-switch v0, :pswitch_data_96

    .line 178
    # setter for: Lmobi/androidcloud/app/ptt/client/b;->fW:Z
    invoke-static {v6}, Lmobi/androidcloud/app/ptt/client/b;->access$102(Z)Z

    .line 179
    :goto_22
    return-void

    .line 178
    :cond_23
    # setter for: Lmobi/androidcloud/app/ptt/client/b;->fW:Z
    invoke-static {v6}, Lmobi/androidcloud/app/ptt/client/b;->access$102(Z)Z

    goto :goto_22

    .line 122
    :pswitch_27
    :try_start_27
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    iget-object v0, v0, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 126
    sget-object v1, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/session/d;->e(Landroid/media/AudioManager;)V

    .line 128
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v3}, Lmobi/androidcloud/lib/session/c;->jQ()I

    move-result v1

    invoke-virtual {v3}, Lmobi/androidcloud/lib/session/c;->jR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lmobi/androidcloud/lib/session/c;->jl()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lmobi/androidcloud/lib/session/d;->a(ILjava/lang/String;IZZ)V
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_88

    .line 133
    # setter for: Lmobi/androidcloud/app/ptt/client/b;->fW:Z
    invoke-static {v6}, Lmobi/androidcloud/app/ptt/client/b;->access$102(Z)Z

    goto :goto_22

    .line 137
    :pswitch_4f
    :try_start_4f
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->iq()V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    # getter for: Lmobi/androidcloud/app/ptt/client/b;->fX:J
    invoke-static {}, Lmobi/androidcloud/app/ptt/client/b;->access$000()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 158
    const-wide/16 v4, 0x2

    cmp-long v4, v2, v4

    if-lez v4, :cond_77

    .line 159
    invoke-static {v0, v1}, Lmobi/androidcloud/app/ptt/client/b;->u(J)J

    .line 160
    invoke-static {}, Lmobi/androidcloud/lib/net/a;->iK()Lmobi/androidcloud/lib/net/a;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/net/a;->iV()V
    :try_end_73
    .catchall {:try_start_4f .. :try_end_73} :catchall_88

    .line 178
    :goto_73
    # setter for: Lmobi/androidcloud/app/ptt/client/b;->fW:Z
    invoke-static {v6}, Lmobi/androidcloud/app/ptt/client/b;->access$102(Z)Z

    goto :goto_22

    .line 164
    :cond_77
    :try_start_77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipped redoing connection. Last redo was only "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds ago."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_88

    goto :goto_73

    .line 178
    :catchall_88
    move-exception v0

    # setter for: Lmobi/androidcloud/app/ptt/client/b;->fW:Z
    invoke-static {v6}, Lmobi/androidcloud/app/ptt/client/b;->access$102(Z)Z

    throw v0

    .line 173
    :pswitch_8d
    :try_start_8d
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/client/b;->hK()V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_88

    .line 178
    # setter for: Lmobi/androidcloud/app/ptt/client/b;->fW:Z
    invoke-static {v6}, Lmobi/androidcloud/app/ptt/client/b;->access$102(Z)Z

    goto :goto_22

    .line 118
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_27
        :pswitch_4f
        :pswitch_8d
    .end packed-switch
.end method
