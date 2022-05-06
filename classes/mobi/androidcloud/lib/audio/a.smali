.class public final enum Lmobi/androidcloud/lib/audio/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static enum ga:Lmobi/androidcloud/lib/audio/a;


# instance fields
.field private gb:Landroid/media/AudioManager;

.field private gc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lmobi/androidcloud/lib/audio/a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/audio/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lmobi/androidcloud/lib/audio/a;

    sget-object v1, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/a;->gb:Landroid/media/AudioManager;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lmobi/androidcloud/lib/audio/a;->gc:I

    .line 16
    return-void
.end method

.method private static a(Landroid/media/AudioManager;I)V
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    iput-object p0, v0, Lmobi/androidcloud/lib/audio/a;->gb:Landroid/media/AudioManager;

    .line 39
    sget-object v0, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    iput p1, v0, Lmobi/androidcloud/lib/audio/a;->gc:I

    .line 40
    return-void
.end method

.method public static b(Landroid/media/AudioManager;I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 44
    if-nez p0, :cond_4

    .line 66
    :cond_3
    :goto_3
    return-void

    .line 58
    :cond_4
    invoke-static {p0, p1}, Lmobi/androidcloud/lib/audio/a;->a(Landroid/media/AudioManager;I)V

    .line 59
    sget-object v0, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 62
    if-ne v1, v0, :cond_3

    .line 63
    invoke-static {p0}, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;->c(Landroid/media/AudioManager;)V

    goto :goto_3
.end method

.method public static hU()V
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/audio/a;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_7

    .line 77
    :goto_6
    return-void

    .line 74
    :cond_7
    sget-object v0, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/audio/a;->gb:Landroid/media/AudioManager;

    sget-object v1, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 75
    sget-object v0, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    iget-object v0, v0, Lmobi/androidcloud/lib/audio/a;->gb:Landroid/media/AudioManager;

    invoke-static {v0}, Lmobi/androidcloud/lib/audio/HeadsetControlReceiver;->d(Landroid/media/AudioManager;)V

    .line 76
    sget-object v0, Lmobi/androidcloud/lib/audio/a;->ga:Lmobi/androidcloud/lib/audio/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lmobi/androidcloud/lib/audio/a;->gb:Landroid/media/AudioManager;

    goto :goto_6
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    .prologue
    .line 20
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/a;->gb:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    .line 34
    :cond_4
    :goto_4
    return-void

    .line 25
    :cond_5
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->jW()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->jX()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    :cond_15
    const/4 v0, -0x1

    if-eq v0, p1, :cond_1e

    const/4 v0, -0x2

    if-eq v0, p1, :cond_1e

    const/4 v0, -0x3

    if-ne v0, p1, :cond_4

    .line 32
    :cond_1e
    iget-object v0, p0, Lmobi/androidcloud/lib/audio/a;->gb:Landroid/media/AudioManager;

    iget v1, p0, Lmobi/androidcloud/lib/audio/a;->gc:I

    invoke-static {v0, v1}, Lmobi/androidcloud/lib/audio/a;->b(Landroid/media/AudioManager;I)V

    goto :goto_4
.end method
