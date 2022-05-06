.class public interface abstract Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper$OnConsumeMultiFinishedListener;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/functions/googleplay/billing/lib/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeMultiFinishedListener"
.end annotation


# virtual methods
.method public abstract onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/Purchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/games37/riversdk/functions/googleplay/billing/lib/IabResult;",
            ">;)V"
        }
    .end annotation
.end method
