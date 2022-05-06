.class Lcom/gm99/fzzj/MyPlatform$4$1$1;
.super Ljava/lang/Object;
.source "MyPlatform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gm99/fzzj/MyPlatform$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/gm99/fzzj/MyPlatform$4$1;


# direct methods
.method constructor <init>(Lcom/gm99/fzzj/MyPlatform$4$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gm99/fzzj/MyPlatform$4$1$1;->this$2:Lcom/gm99/fzzj/MyPlatform$4$1;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 174
    invoke-static {}, Lcom/ledo/fantasy/game/JniProxy;->onLogout()V

    .line 175
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/ledo/fantasy/game/JniProxy;->onLogined(I)V

    .line 176
    return-void
.end method
