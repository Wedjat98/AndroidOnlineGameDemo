.class Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;
.super Ljava/lang/Object;
.source "AccessTokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedPreferencesTokenCachingStrategyFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/LegacyTokenHelper;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Lcom/facebook/LegacyTokenHelper;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
