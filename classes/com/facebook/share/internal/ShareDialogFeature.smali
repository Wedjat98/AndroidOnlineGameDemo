.class public final enum Lcom/facebook/share/internal/ShareDialogFeature;
.super Ljava/lang/Enum;
.source "ShareDialogFeature.java"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/internal/ShareDialogFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum HASHTAG:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum LINK_SHARE_QUOTES:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum MULTIMEDIA:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum PHOTOS:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum SHARE_DIALOG:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum VIDEO:Lcom/facebook/share/internal/ShareDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x1339f47

    .line 32
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "SHARE_DIALOG"

    .line 36
    const v2, 0x1332b3a

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 37
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "PHOTOS"

    .line 40
    const v2, 0x13350ac

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->PHOTOS:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 41
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "VIDEO"

    .line 44
    const v2, 0x13353e4

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->VIDEO:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 45
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "MULTIMEDIA"

    .line 48
    invoke-direct {v0, v1, v7, v3}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->MULTIMEDIA:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 49
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "HASHTAG"

    const/4 v2, 0x4

    .line 52
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->HASHTAG:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 53
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "LINK_SHARE_QUOTES"

    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->LINK_SHARE_QUOTES:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/share/internal/ShareDialogFeature;

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->PHOTOS:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->VIDEO:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->MULTIMEDIA:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/facebook/share/internal/ShareDialogFeature;->HASHTAG:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/share/internal/ShareDialogFeature;->LINK_SHARE_QUOTES:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->ENUM$VALUES:[Lcom/facebook/share/internal/ShareDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "minVersion"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/facebook/share/internal/ShareDialogFeature;->minVersion:I

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/ShareDialogFeature;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/facebook/share/internal/ShareDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareDialogFeature;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/ShareDialogFeature;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->ENUM$VALUES:[Lcom/facebook/share/internal/ShareDialogFeature;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/share/internal/ShareDialogFeature;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/facebook/share/internal/ShareDialogFeature;->minVersion:I

    return v0
.end method
