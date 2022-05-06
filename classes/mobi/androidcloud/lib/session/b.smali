.class public final Lmobi/androidcloud/lib/session/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jd:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    iget-object v0, v0, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lmobi/androidcloud/lib/session/b;->jd:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public jP()Z
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lmobi/androidcloud/lib/session/b;->jd:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 20
    if-nez v0, :cond_a

    .line 22
    const/4 v0, 0x0

    .line 25
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
