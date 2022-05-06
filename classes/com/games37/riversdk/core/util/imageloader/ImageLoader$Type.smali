.class public final enum Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/util/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

.field public static final enum FIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

.field public static final enum LIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    const-string v1, "FIFO"

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->FIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    new-instance v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    const-string v1, "LIFO"

    invoke-direct {v0, v1, v3}, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->LIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    sget-object v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->FIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->LIFO:Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->$VALUES:[Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    const-class v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    return-object v0
.end method

.method public static values()[Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;
    .registers 1

    .prologue
    .line 154
    sget-object v0, Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->$VALUES:[Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    invoke-virtual {v0}, [Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/games37/riversdk/core/util/imageloader/ImageLoader$Type;

    return-object v0
.end method
