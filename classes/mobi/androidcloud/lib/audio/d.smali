.class public final Lmobi/androidcloud/lib/audio/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final gf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 12
    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_7
    sput-boolean v0, Lmobi/androidcloud/lib/audio/d;->gf:Z

    .line 13
    new-instance v0, Lmobi/androidcloud/lib/audio/d;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/d;-><init>()V

    return-void

    .line 12
    :cond_f
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/media/AudioManager;)V
    .registers 2

    .prologue
    .line 18
    if-nez p0, :cond_3

    .line 35
    :goto_2
    return-void

    .line 23
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 35
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static b(Landroid/media/AudioManager;)V
    .registers 1

    .prologue
    .line 38
    if-nez p0, :cond_3

    .line 43
    :goto_2
    return-void

    .line 42
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_2
.end method
