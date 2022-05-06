.class public Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static gn:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 15
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/talkray/arcvoice/client/b;->fH:Lcom/talkray/arcvoice/client/b;

    iget-object v1, v1, Lcom/talkray/arcvoice/client/b;->fI:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;->gn:Landroid/content/ComponentName;

    .line 18
    new-instance v0, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static c(Landroid/media/AudioManager;)V
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;->gn:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 50
    return-void
.end method

.method public static d(Landroid/media/AudioManager;)V
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;->gn:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 34
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 38
    return-void
.end method
