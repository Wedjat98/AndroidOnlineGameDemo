.class public final Lcom/games37/riversdk/core/facebook/social/model/RewardItem$RewardState;
.super Ljava/lang/Object;
.source "RewardItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/facebook/social/model/RewardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RewardState"
.end annotation


# static fields
.field public static final GET:I = 0x2

.field public static final GOT:I = 0x1

.field public static final NONE:I


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/facebook/social/model/RewardItem;


# direct methods
.method public constructor <init>(Lcom/games37/riversdk/core/facebook/social/model/RewardItem;)V
    .registers 2
    .param p1, "this$0"    # Lcom/games37/riversdk/core/facebook/social/model/RewardItem;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/games37/riversdk/core/facebook/social/model/RewardItem$RewardState;->this$0:Lcom/games37/riversdk/core/facebook/social/model/RewardItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
