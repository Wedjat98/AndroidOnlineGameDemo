.class Lcom/games37/riversdk/core/callback/SDKCallbackInstance$1;
.super Lcom/games37/riversdk/core/callback/BaseCallback;
.source "SDKCallbackInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/callback/SDKCallbackInstance;->getCallback(Lcom/games37/riversdk/core/callback/SDKCallbackInstance$SDKCallbackType;)Lcom/games37/riversdk/core/callback/BaseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/callback/SDKCallbackInstance;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/callback/SDKCallbackInstance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/games37/riversdk/core/callback/SDKCallbackInstance$1;->this$0:Lcom/games37/riversdk/core/callback/SDKCallbackInstance;

    invoke-direct {p0}, Lcom/games37/riversdk/core/callback/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/Map;)V
    .registers 3
    .param p1, "stateCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onViewDismiss()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public onViewShow()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method
