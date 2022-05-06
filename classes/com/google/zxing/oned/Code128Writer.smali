.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$CType;
    }
.end annotation


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static chooseCode(Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "oldCode"    # I

    .prologue
    const/16 v2, 0x63

    const/16 v3, 0x64

    .line 210
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 211
    .local v1, "lookahead":Lcom/google/zxing/oned/Code128Writer$CType;
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v1, v4, :cond_10

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_12

    :cond_10
    move p2, v3

    .line 252
    .end local p2    # "oldCode":I
    :cond_11
    :goto_11
    return p2

    .line 214
    .restart local p2    # "oldCode":I
    :cond_12
    if-eq p2, v2, :cond_11

    .line 217
    if-ne p2, v3, :cond_4f

    .line 218
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v1, v4, :cond_11

    .line 222
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 223
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v1, v4, :cond_11

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v1, v4, :cond_11

    .line 226
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_3a

    .line 227
    add-int/lit8 v4, p1, 0x3

    invoke-static {p0, v4}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v4

    .line 228
    sget-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v4, v5, :cond_38

    move p2, v2

    .line 229
    goto :goto_11

    :cond_38
    move p2, v3

    .line 231
    goto :goto_11

    .line 236
    :cond_3a
    add-int/lit8 v0, p1, 0x4

    .line 237
    .local v0, "index":I
    :goto_3c
    invoke-static {p0, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_47

    .line 238
    add-int/lit8 v0, v0, 0x2

    goto :goto_3c

    .line 240
    :cond_47
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_4d

    move p2, v3

    .line 241
    goto :goto_11

    :cond_4d
    move p2, v2

    .line 243
    goto :goto_11

    .line 246
    .end local v0    # "index":I
    :cond_4f
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_59

    .line 247
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 249
    :cond_59
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_5f

    move p2, v2

    .line 250
    goto :goto_11

    :cond_5f
    move p2, v3

    .line 252
    goto :goto_11
.end method

.method private static findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;
    .registers 7
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .prologue
    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 188
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 189
    .local v1, "last":I
    if-lt p1, v1, :cond_d

    .line 190
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 206
    :goto_c
    return-object v2

    .line 192
    :cond_d
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 193
    .local v0, "c":C
    const/16 v2, 0xf1

    if-ne v0, v2, :cond_18

    .line 194
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_c

    .line 196
    :cond_18
    if-lt v0, v3, :cond_1c

    if-le v0, v4, :cond_1f

    .line 197
    :cond_1c
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_c

    .line 199
    :cond_1f
    add-int/lit8 v2, p1, 0x1

    if-lt v2, v1, :cond_26

    .line 200
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_c

    .line 202
    :cond_26
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 203
    if-lt v0, v3, :cond_30

    if-le v0, v4, :cond_33

    .line 204
    :cond_30
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_c

    .line 206
    :cond_33
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_c
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 66
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_19

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_128, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_19
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 23
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 76
    .local v8, "length":I
    if-lez v8, :cond_c

    const/16 v17, 0x50

    move/from16 v0, v17

    if-le v8, v0, :cond_23

    .line 77
    :cond_c
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Contents length should be between 1 and 80 characters, but got "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 81
    :cond_23
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_24
    if-ge v7, v8, :cond_55

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 83
    .local v2, "c":C
    const/16 v17, 0x20

    move/from16 v0, v17

    if-lt v2, v0, :cond_38

    const/16 v17, 0x7e

    move/from16 v0, v17

    if-le v2, v0, :cond_52

    .line 84
    :cond_38
    packed-switch v2, :pswitch_data_11c

    .line 91
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Bad character in input: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 81
    :cond_52
    :pswitch_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 96
    .end local v2    # "c":C
    :cond_55
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v12, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/4 v3, 0x0

    .line 98
    .local v3, "checkSum":I
    const/4 v4, 0x1

    .line 99
    .local v4, "checkWeight":I
    const/4 v5, 0x0

    .line 100
    .local v5, "codeSet":I
    const/4 v14, 0x0

    .line 102
    .local v14, "position":I
    :cond_5e
    :goto_5e
    if-ge v14, v8, :cond_c1

    .line 104
    move-object/from16 v0, p1

    invoke-static {v0, v14, v5}, Lcom/google/zxing/oned/Code128Writer;->chooseCode(Ljava/lang/CharSequence;II)I

    move-result v9

    .line 108
    .local v9, "newCodeSet":I
    if-ne v9, v5, :cond_b0

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v17

    packed-switch v17, :pswitch_data_128

    .line 126
    const/16 v17, 0x64

    move/from16 v0, v17

    if-ne v5, v0, :cond_9f

    .line 127
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v17

    add-int/lit8 v11, v17, -0x20

    .line 133
    .local v11, "patternIndex":I
    :goto_7f
    add-int/lit8 v14, v14, 0x1

    .line 153
    :goto_81
    sget-object v17, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    mul-int v17, v11, v4

    add-int v3, v3, v17

    .line 157
    if-eqz v14, :cond_5e

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 113
    .end local v11    # "patternIndex":I
    :pswitch_93
    const/16 v11, 0x66

    .line 114
    .restart local v11    # "patternIndex":I
    goto :goto_7f

    .line 116
    .end local v11    # "patternIndex":I
    :pswitch_96
    const/16 v11, 0x61

    .line 117
    .restart local v11    # "patternIndex":I
    goto :goto_7f

    .line 119
    .end local v11    # "patternIndex":I
    :pswitch_99
    const/16 v11, 0x60

    .line 120
    .restart local v11    # "patternIndex":I
    goto :goto_7f

    .line 122
    .end local v11    # "patternIndex":I
    :pswitch_9c
    const/16 v11, 0x64

    .line 123
    .restart local v11    # "patternIndex":I
    goto :goto_7f

    .line 129
    .end local v11    # "patternIndex":I
    :cond_9f
    add-int/lit8 v17, v14, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 130
    .restart local v11    # "patternIndex":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_7f

    .line 137
    .end local v11    # "patternIndex":I
    :cond_b0
    if-nez v5, :cond_bf

    .line 139
    const/16 v17, 0x64

    move/from16 v0, v17

    if-ne v9, v0, :cond_bc

    .line 140
    const/16 v11, 0x68

    .line 149
    .restart local v11    # "patternIndex":I
    :goto_ba
    move v5, v9

    goto :goto_81

    .line 143
    .end local v11    # "patternIndex":I
    :cond_bc
    const/16 v11, 0x69

    .restart local v11    # "patternIndex":I
    goto :goto_ba

    .line 147
    .end local v11    # "patternIndex":I
    :cond_bf
    move v11, v9

    .restart local v11    # "patternIndex":I
    goto :goto_ba

    .line 163
    .end local v9    # "newCodeSet":I
    .end local v11    # "patternIndex":I
    :cond_c1
    rem-int/lit8 v3, v3, 0x67

    .line 164
    sget-object v17, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v17, v17, v3

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v17, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v18, 0x6a

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "codeWidth":I
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_dc
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_fc

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    .line 172
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_ef
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_dc

    aget v16, v17, v18

    .line 173
    .local v16, "width":I
    add-int v6, v6, v16

    .line 172
    add-int/lit8 v18, v18, 0x1

    goto :goto_ef

    .line 178
    .end local v16    # "width":I
    :cond_fc
    new-array v15, v6, [Z

    .line 179
    .local v15, "result":[Z
    const/4 v13, 0x0

    .line 180
    .local v13, "pos":I
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_103
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 181
    .local v10, "pattern":[I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v13, v10, v0}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v18

    add-int v13, v13, v18

    .line 182
    goto :goto_103

    .line 184
    .end local v10    # "pattern":[I
    :cond_11a
    return-object v15

    .line 84
    nop

    :pswitch_data_11c
    .packed-switch 0xf1
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
    .end packed-switch

    .line 111
    :pswitch_data_128
    .packed-switch 0xf1
        :pswitch_93
        :pswitch_96
        :pswitch_99
        :pswitch_9c
    .end packed-switch
.end method
