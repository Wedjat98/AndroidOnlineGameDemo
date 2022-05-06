.class public Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
.super Ljava/lang/Object;
.source "CurrentPlaceRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/CurrentPlaceRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final fields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private location:Landroid/location/Location;

.field private minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

.field private scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->HIGH_ACCURACY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->fields:Ljava/util/Set;

    .line 127
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Landroid/location/Location;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->location:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->limit:I

    return v0
.end method

.method static synthetic access$4(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->fields:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->fields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public build()Lcom/facebook/places/model/CurrentPlaceRequestParams;
    .registers 3

    .prologue
    .line 200
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/model/CurrentPlaceRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceRequestParams;)V

    return-object v0
.end method

.method public setLimit(I)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .registers 2
    .param p1, "limit"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->limit:I

    .line 180
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->location:Landroid/location/Location;

    .line 145
    return-object p0
.end method

.method public setMinConfidenceLevel(Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .registers 2
    .param p1, "minConfidenceLevel"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .line 169
    return-object p0
.end method

.method public setScanMode(Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;)Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;
    .registers 2
    .param p1, "scanMode"    # Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 159
    return-object p0
.end method
