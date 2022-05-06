.class public Lcom/games37/riversdk/gm99/GM99Application;
.super Lcom/games37/riversdk/core/api/BaseApplication;
.source "GM99Application.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/games37/riversdk/gm99/GM99Application;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/games37/riversdk/gm99/GM99Application;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/games37/riversdk/core/api/BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/games37/riversdk/core/api/BaseApplication;->onCreate(Landroid/content/Context;)V

    .line 23
    return-void
.end method
