.class Lcom/facebook/AccessTokenManager$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessToken(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field private final synthetic val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$1;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$1;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    # invokes: Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    invoke-static {v0, v1}, Lcom/facebook/AccessTokenManager;->access$0(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    .line 238
    return-void
.end method
