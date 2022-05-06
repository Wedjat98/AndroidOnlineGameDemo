.class final Lcom/talkray/arcvoice/client/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic fT:Lcom/talkray/arcvoice/client/b;


# direct methods
.method constructor <init>(Lcom/talkray/arcvoice/client/b;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/talkray/arcvoice/client/c;->fT:Lcom/talkray/arcvoice/client/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/talkray/arcvoice/client/c;->fT:Lcom/talkray/arcvoice/client/b;

    invoke-static {v0}, Lcom/talkray/arcvoice/client/b;->a(Lcom/talkray/arcvoice/client/b;)V

    .line 87
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    iget-object v1, p0, Lcom/talkray/arcvoice/client/c;->fT:Lcom/talkray/arcvoice/client/b;

    iget-object v1, v1, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/audio/k;->b(Landroid/content/Context;)V

    .line 88
    sget-object v0, Lcom/talkray/arcvoice/utils/a;->fU:Lcom/talkray/arcvoice/utils/a;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/utils/a;->hR()V

    .line 89
    iget-object v0, p0, Lcom/talkray/arcvoice/client/c;->fT:Lcom/talkray/arcvoice/client/b;

    new-instance v1, Lmobi/androidcloud/app/ptt/client/b;

    invoke-direct {v1}, Lmobi/androidcloud/app/ptt/client/b;-><init>()V

    invoke-static {v0, v1}, Lcom/talkray/arcvoice/client/b;->a(Lcom/talkray/arcvoice/client/b;Lmobi/androidcloud/app/ptt/client/b;)Lmobi/androidcloud/app/ptt/client/b;

    .line 90
    return-void
.end method
