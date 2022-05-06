.class public final enum Lcom/iflytek/sunflower/FlowerCollector$Gender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sunflower/FlowerCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/sunflower/FlowerCollector$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Female:Lcom/iflytek/sunflower/FlowerCollector$Gender;

.field public static final enum Male:Lcom/iflytek/sunflower/FlowerCollector$Gender;

.field public static final enum Unknown:Lcom/iflytek/sunflower/FlowerCollector$Gender;

.field private static final synthetic a:[Lcom/iflytek/sunflower/FlowerCollector$Gender;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/sunflower/FlowerCollector$Gender;

    const-string v1, "Male"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/sunflower/FlowerCollector$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/sunflower/FlowerCollector$Gender;->Male:Lcom/iflytek/sunflower/FlowerCollector$Gender;

    new-instance v0, Lcom/iflytek/sunflower/FlowerCollector$Gender;

    const-string v1, "Female"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/sunflower/FlowerCollector$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/sunflower/FlowerCollector$Gender;->Female:Lcom/iflytek/sunflower/FlowerCollector$Gender;

    new-instance v0, Lcom/iflytek/sunflower/FlowerCollector$Gender;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/sunflower/FlowerCollector$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/sunflower/FlowerCollector$Gender;->Unknown:Lcom/iflytek/sunflower/FlowerCollector$Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/sunflower/FlowerCollector$Gender;

    sget-object v1, Lcom/iflytek/sunflower/FlowerCollector$Gender;->Male:Lcom/iflytek/sunflower/FlowerCollector$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/sunflower/FlowerCollector$Gender;->Female:Lcom/iflytek/sunflower/FlowerCollector$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/sunflower/FlowerCollector$Gender;->Unknown:Lcom/iflytek/sunflower/FlowerCollector$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/sunflower/FlowerCollector$Gender;->a:[Lcom/iflytek/sunflower/FlowerCollector$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/iflytek/sunflower/FlowerCollector$Gender;
    .registers 1

    sget-object v0, Lcom/iflytek/sunflower/FlowerCollector$Gender;->a:[Lcom/iflytek/sunflower/FlowerCollector$Gender;

    invoke-virtual {v0}, [Lcom/iflytek/sunflower/FlowerCollector$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sunflower/FlowerCollector$Gender;

    return-object v0
.end method
