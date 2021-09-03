import React from 'react'
import './index.less'

import {Card} from 'antd'
import ReactEcharts from 'echarts-for-react'

import {reqChart} from '../../api'
import httpStatus from '../../utils/httpStatus'

export default class Home extends React.Component {

    state = {
        math: [],
        title: [],
        chinese: [],
        physical: [],
        history: [],
        english: []
    }
    
    getCharts = async () => {
        const result = await reqChart()
        if (result.code === httpStatus.SEARCH) {
            const data = result.data.reduce((pre, item) => {
                pre.title.push(item.title)
                pre.math.push(item.math)
                pre.chinese.push(item.chinese)
                pre.physical.push(item.physical)
                pre.history.push(item.history)
                pre.english.push(item.english)
                return pre
            }, {math: [],
                title: [],
                chinese: [],
                physical: [],
                history: [],
                english: []})
            this.setState(data)
        }
    }

    getOptionsBar = ()=> {
        const  {math, title,chinese, physical, history, english} = this.state
        return {
            title: {
                text: '学生成绩表'
            },
            tooltip: {},
            legend: {
                data: ['数学','语文','英语','物理','历史']
            },
            xAxis: {
                data: title
            },
            yAxis: {},
            series: [{
                name: '数学',
                type: 'bar',
                data: math
            },{
                name: '语文',
                type: 'bar',
                data: chinese
            },{
                name: '英语',
                type: 'bar',
                data: english
            },{
                name: '物理',
                type: 'bar',
                data: physical
            },{
                name: '历史',
                type: 'bar',
                data: history
            }]
        }
    }

    getOptionsLine = ()=> {
        const  {math, title,chinese, physical, history, english} = this.state
        return {
            title: {
                text: '学生成绩表'
            },
            tooltip: {},
            legend: {
                data: ['数学','语文','英语','物理','历史']
            },
            xAxis: {
                data: title
            },
            yAxis: {},
            series: [{
                name: '数学',
                type: 'line',
                data: math
            },{
                name: '语文',
                type: 'line',
                data: chinese
            },{
                name: '英语',
                type: 'line',
                data: english
            },{
                name: '物理',
                type: 'line',
                data: physical
            },{
                name: '历史',
                type: 'line',
                data: history
            }]
        }
    }

    update = ()=> {
        this.setState((state)=>({
            math: state.math.map(score => score+5),
            chinese:state.chinese.map(score => score-5),
            english:state.english.map(score => score+3),
            history:state.history.map(score => score-1),
            physical:state.physical.map(score => score+2)
        }))
    }

    componentWillMount() {
        this.getCharts()
    }
    
    render() {
        return (
            <div>
                
                <Card title='柱状图'>
                    <ReactEcharts  option={this.getOptionsBar()} />
                </Card>
                <Card title='折线图'>
                    <ReactEcharts  option={this.getOptionsLine()} />
                </Card>
                
            </div>
        )
    }
}