.class Lcom/facebook/appevents/AnalyticsUserIDStore$1;
.super Ljava/lang/Object;
.source "AnalyticsUserIDStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AnalyticsUserIDStore;->initStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 49
    # invokes: Lcom/facebook/appevents/AnalyticsUserIDStore;->initAndWait()V
    invoke-static {}, Lcom/facebook/appevents/AnalyticsUserIDStore;->access$0()V

    .line 50
    return-void
.end method
