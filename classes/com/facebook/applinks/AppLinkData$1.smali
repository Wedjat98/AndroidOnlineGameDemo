.class Lcom/facebook/applinks/AppLinkData$1;
.super Ljava/lang/Object;
.source "AppLinkData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$applicationContext:Landroid/content/Context;

.field private final synthetic val$applicationIdCopy:Ljava/lang/String;

.field private final synthetic val$completionHandler:Lcom/facebook/applinks/AppLinkData$CompletionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/applinks/AppLinkData$1;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/applinks/AppLinkData$1;->val$applicationIdCopy:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/applinks/AppLinkData$1;->val$completionHandler:Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData$1;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData$1;->val$applicationIdCopy:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/applinks/AppLinkData$1;->val$completionHandler:Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .line 148
    # invokes: Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    invoke-static {v0, v1, v2}, Lcom/facebook/applinks/AppLinkData;->access$0(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 150
    return-void
.end method
