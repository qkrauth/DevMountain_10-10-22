function findOutlier(integers) {
    let evens = []
    let odds = []

    for (let i = 0; i < integers.length; i++) {
        let num = integers[i]

        if (num % 2 === 0) {
            evens.push(num)
        } else {
            odds.push(num)
        }
    }

    if (evens.length === 1) {
        return evens[0]
    } else {
        return odds[0]
    }
}

// with ternaries
function findOutlier(integers) {
    let evens = []
    let odds = []
    integers.forEach(e => e % 2 === 0 ? evens.push(e) : odds.push(e))
    return odds.length === 1 ? odds[0] : evens[0]
  }
  