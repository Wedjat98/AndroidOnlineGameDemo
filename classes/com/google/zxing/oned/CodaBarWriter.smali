.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 26
    new-array v0, v1, [C

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 27
    new-array v0, v1, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 29
    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    return-void

    .line 26
    :array_1e
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 27
    :array_26
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    .line 28
    :array_2e
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 23
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_63

    .line 36
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v19, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-char v19, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    :cond_29
    :goto_29
    const/16 v15, 0x14

    .line 67
    .local v15, "resultLength":I
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v10, v0, :cond_14c

    .line 68
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-nez v18, :cond_5e

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5e

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x24

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_119

    .line 69
    :cond_5e
    add-int/lit8 v15, v15, 0x9

    .line 67
    :goto_60
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    .line 39
    .end local v10    # "i":I
    .end local v15    # "resultLength":I
    :cond_63
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 40
    .local v9, "firstChar":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    .line 41
    .local v12, "lastChar":C
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    .line 42
    .local v17, "startsNormal":Z
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v8

    .line 43
    .local v8, "endsNormal":Z
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v16

    .line 44
    .local v16, "startsAlt":Z
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v7

    .line 45
    .local v7, "endsAlt":Z
    if-eqz v17, :cond_c0

    .line 46
    if-nez v8, :cond_29

    .line 47
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Invalid start/end guards: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 50
    :cond_c0
    if-eqz v16, :cond_dd

    .line 51
    if-nez v7, :cond_29

    .line 52
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Invalid start/end guards: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 57
    :cond_dd
    if-nez v8, :cond_e1

    if-eqz v7, :cond_fa

    .line 58
    :cond_e1
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Invalid start/end guards: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 61
    :cond_fa
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v19, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-char v19, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_29

    .line 70
    .end local v7    # "endsAlt":Z
    .end local v8    # "endsNormal":Z
    .end local v9    # "firstChar":C
    .end local v12    # "lastChar":C
    .end local v16    # "startsAlt":Z
    .end local v17    # "startsNormal":Z
    .restart local v10    # "i":I
    .restart local v15    # "resultLength":I
    :cond_119
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v18

    if-eqz v18, :cond_12b

    .line 71
    add-int/lit8 v15, v15, 0xa

    goto/16 :goto_60

    .line 73
    :cond_12b
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Cannot encode : \'"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x27

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 77
    :cond_14c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    add-int v18, v18, v15

    .line 79
    move/from16 v0, v18

    new-array v14, v0, [Z

    .line 80
    .local v14, "result":[Z
    const/4 v13, 0x0

    .line 81
    .local v13, "position":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_15a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1de

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 83
    .local v3, "c":C
    if-eqz v11, :cond_178

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_17b

    .line 85
    :cond_178
    sparse-switch v3, :sswitch_data_1e0

    .line 100
    :cond_17b
    :goto_17b
    const/4 v4, 0x0

    .line 101
    .local v4, "code":I
    const/4 v10, 0x0

    :goto_17d
    sget-object v18, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_194

    .line 103
    sget-object v18, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v18, v18, v10

    move/from16 v0, v18

    if-ne v3, v0, :cond_1c2

    .line 104
    sget-object v18, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v4, v18, v10

    .line 108
    :cond_194
    const/4 v5, 0x1

    .line 109
    .local v5, "color":Z
    const/4 v6, 0x0

    .line 110
    .local v6, "counter":I
    const/4 v2, 0x0

    .line 111
    .local v2, "bit":I
    :goto_197
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ge v2, v0, :cond_1ca

    .line 112
    aput-boolean v5, v14, v13

    .line 113
    add-int/lit8 v13, v13, 0x1

    .line 114
    rsub-int/lit8 v18, v2, 0x6

    shr-int v18, v4, v18

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_1af

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_1c7

    .line 115
    :cond_1af
    if-nez v5, :cond_1c5

    const/4 v5, 0x1

    .line 116
    :goto_1b2
    add-int/lit8 v2, v2, 0x1

    .line 117
    const/4 v6, 0x0

    goto :goto_197

    .line 87
    .end local v2    # "bit":I
    .end local v4    # "code":I
    .end local v5    # "color":Z
    .end local v6    # "counter":I
    :sswitch_1b6
    const/16 v3, 0x41

    .line 88
    goto :goto_17b

    .line 90
    :sswitch_1b9
    const/16 v3, 0x42

    .line 91
    goto :goto_17b

    .line 93
    :sswitch_1bc
    const/16 v3, 0x43

    .line 94
    goto :goto_17b

    .line 96
    :sswitch_1bf
    const/16 v3, 0x44

    goto :goto_17b

    .line 101
    .restart local v4    # "code":I
    :cond_1c2
    add-int/lit8 v10, v10, 0x1

    goto :goto_17d

    .line 115
    .restart local v2    # "bit":I
    .restart local v5    # "color":Z
    .restart local v6    # "counter":I
    :cond_1c5
    const/4 v5, 0x0

    goto :goto_1b2

    .line 119
    :cond_1c7
    add-int/lit8 v6, v6, 0x1

    goto :goto_197

    .line 122
    :cond_1ca
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v11, v0, :cond_1da

    .line 123
    const/16 v18, 0x0

    aput-boolean v18, v14, v13

    .line 124
    add-int/lit8 v13, v13, 0x1

    .line 81
    :cond_1da
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_15a

    .line 127
    .end local v2    # "bit":I
    .end local v3    # "c":C
    .end local v4    # "code":I
    .end local v5    # "color":Z
    .end local v6    # "counter":I
    :cond_1de
    return-object v14

    .line 85
    nop

    :sswitch_data_1e0
    .sparse-switch
        0x2a -> :sswitch_1bc
        0x45 -> :sswitch_1bf
        0x4e -> :sswitch_1b9
        0x54 -> :sswitch_1b6
    .end sparse-switch
.end method
